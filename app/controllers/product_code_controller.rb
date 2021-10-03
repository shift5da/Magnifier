class ProductCodeController < ApplicationController
  layout "product_code"


  def verify

    #code的格式
    #   1)长度为：27个字符，1～12个为产品ID，13～27为码值
    #   2)例子：000000000012 000000000000012
    #          ------------ ---------------
    #             产品ID        码范围

    code = decrypted(params[:code])

    if !code.nil? and code.length == 27

    else

    end


    # if code.nil?
    #
    #
    # else
    #   product_id = code[0, 12].to_i
    #   code_value = code[12, 15].to_i
    #
    #   @result = code_value
    #
    # end

    # code = code.rjust(15, '0')






  end

  private

    def decrypted(encrypted_code)
      if encrypted_code.nil?
        return nil
      else
        new_arr = []
        encrypted_code.scan(/.../).each{|item|
          new_arr << item.to_i.chr
        }
        decipher = OpenSSL::Cipher::AES.new(128, :CBC)
        decipher.decrypt
        decipher.key = "1234512345123451"
        decipher.iv = "1234512345123451"

        return decipher.update(new_arr.join) + decipher.final

      end
    end



    def method
      # code

      cipher = OpenSSL::Cipher::AES.new(128, :CBC)
      cipher.encrypt
      # key = cipher.random_key
      # iv = cipher.random_iv
      cipher.key = "1234512345123451"
      cipher.iv = "1234512345123451"

      @encrypted = cipher.update(code) + cipher.final
      puts @encrypted.bytes.join(' ')
      new_arr = []
      @encrypted.each_byte{ |c|
        new_arr << c.to_s.rjust(3, '0')
      }
      puts new_arr.join
      new_arr2 = []
      new_arr.join.scan(/.../).each{|item|
        new_arr2 << item.to_i.chr
      }
      # puts @encrypted.bytes.join


      decipher = OpenSSL::Cipher::AES.new(128, :CBC)
      decipher.decrypt
      decipher.key = "1234512345123451"
      decipher.iv = "1234512345123451"

      # @plain = decipher.update(@encrypted) + decipher.final
      @plain = decipher.update(new_arr2.join) + decipher.final

      @code = code

    end




end
