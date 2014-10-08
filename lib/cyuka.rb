require "cyuka/version"

class  Cyuka
 	def initialize
	cn2ja_path=File.expand_path("../../data/cn2ja.data", __FILE__)
	ja2cn_path=File.expand_path("../../data/ja2cn.data", __FILE__)
	@cn2ja=eval(File.open(cn2ja_path).read)
	@ja2cn=eval(File.open(ja2cn_path).read)
	end
	def convert (str, flag="cn2ja")
		case  flag
		  when "cn2ja"
		  return str.split("").map{|cn|  @cn2ja.has_key?(cn) ? @cn2ja[cn] : cn }.join("")
		  when "ja2cn"
		  return str.split("").map{|jp|  @ja2cn.has_key?(jp) ? @ja2cn[jp] : jp }.join("")
		end
	end
       	# Your code goes here...
end

#converter=Cyuka.new

#puts converter.convert("达人","cn2ja")
