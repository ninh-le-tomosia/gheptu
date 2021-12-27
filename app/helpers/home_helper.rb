module HomeHelper
  def strings
    array = [
      "Xuân Diệu",
      "Ngẫu nhiên",
      "Đơn phương",
      "Lọ cồn",
      "Tam cúc",
      "Vịt nướng",
      "Mặn mòi",
      "Cá chép",
      "Phá lấu",
      "Chủ tịch",
      "Mứt cóc",
      "Trông ngóng",
      "Gió đông",
      "Ốc vít",
      "Tương tư",
      "Buồng lái",
      "Bồn lọc",
      "Lá cóc",
      "Tửu lượng",
      "Nương tử",
      "Con chồn",
      "Củ tỏi",
      "Ma túy",
      "Mây trắng",
      "Nước non",
      "Ngũ cốc",
      "Hành tây",
      "Mưa bóng mây",
      "Giáng sinh",
      "Tình nhân",
      "Chích chòe",
      "Khắc nghiệt",
      "Quang Trung",
      "Du thuyền",
      "Hỏa hoạn",
      "Đam mê",
      "Tưởng tượng",
      "Ủng hộ",
      "Quá đáng",
      "Nhiệt huyết",
      "Cổ đông",
      "An toàn",
      "Thương mại",
      "Ấp úng",
      "Hoa lệ",
      "Kính vạn hoa",
      "Cánh phượng",
      "Mũi Né",
      "Kiêu sa",
      "Măng non",
      "Địa cầu",
      "Minh mẫn",
      "Mát mẻ",
      "Chân chất",
      "Triễn vọng",
      "Triễn lãm",
      "Chua ngoa",
      "Tham nhũng",
      "Kiếm khách",
      "Tôn nghiêm",
      "Thuyết trình",
      "Tương phản",
      "Kiến thức",
      "Nghiệt ngã",
      "Khập khiễng",
      "Nguyên chất",
      "Công nguyên",
      "Ngưỡng thiều",
      "Khuya khoắt",
      "Khuyến khích",
      "Khuynh hướng",
      "Xuyên không",
      "Thương lượng",
      "Lương thưởng",
      "Thượng nguồn",
      "Doanh nghiệp",
      "Thuồng luồng"
    ]
    (0..array.count - 1).sort{rand() - 0.5}.map {|i| array[i]}
  end

  def generate_string_to_characters(string)
    chars = string.gsub(" ", "").chars
    chars.sort{ rand() - 0.5 }.map {|i| string[i]}.join("")
  end

  def generate_strings
    strings_after_convert = []
    strings.sort_by(&:length).each_with_index do |string, index|
      strings_after_convert << {
        chars: generate_string_to_characters(string).chars,
        result: string
      }
    end
    strings_after_convert
  end
end