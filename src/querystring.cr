require "uri"

module QString
  VERSION = "0.1.0"

  def self.stringify(obj : Hash, opts : Hash = {} of Nil => Nil)
    options = {
      "question_mark" => true,
    }

    if (!opts.empty?)
      options = options.merge(opts)
    end

    str = options["question_mark"] ? "?" : ""

    obj.each_key do |key|
      value = obj[key]
      str += key.to_s + '=' + value.to_s + '&'
    end

    str.rchop('&')
  end

  def self.parse(str : String)
    if (str[0] != '?')
      str = '?' + str
    end

    uri = URI.parse(str)
    ret = {} of String => Int32 | String | Nil

    if (uri.query.nil?)
      return ret
    end

    (uri.query.to_s).split('&').each do |e|
      begin
        key, value = e.gsub(/\+/, ' ').split('=')
        value = value.to_s.to_i32
      rescue
      end

      ret[key.to_s] = value
    end

    ret
  end
end
