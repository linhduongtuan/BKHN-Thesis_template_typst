Hiểu biết cá nhân: typst có hai môi trường, mã và nội dung, trong môi trường mã, nó sẽ được thực thi theo mã và trong môi trường nội dung, nó sẽ được phân tích thành văn bản thông thường, môi trường mã được biểu thị bằng {} và môi trường nội dung được đại diện bởi []. Nội dung bắt đầu bằng \# để kết nối với một đoạn mã, chẳng hạn như \#set quy tắc, và \# không cần thiết để gọi mã trong khối được đặt trong dấu ngoặc nhọn.

```cpp
void setFib(void)
{
  fib(1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 | 89, 10);
}
```

=== Tiêu đề

Tương tự như markdown, \# được dùng để chỉ tiêu đề, trong typst, = được dùng để chỉ tiêu đề, một = được dùng cho tiêu đề cấp một, hai = được dùng cho tiêu đề cấp hai, v.v.


Khoảng cách, phông chữ, v.v. đều do tôi sắp chữ. Nhưng chú ý cần thêm 12pt sau mỗi đoạn nhé! ! !

#pagebreak()

= giới thiệu mẫu

== Tổng quan về mẫu

Dự án này được viết lại bằng ngôn ngữ Typst để giúp sinh viên chưa tốt nghiệp của Đại học Công Thương Chiết Giang viết luận văn tốt nghiệp thuận tiện hơn. Mẫu này được tạo dựa trên hệ thống Typst, so với Latex@tex1989, nó là một phần mềm sắp chữ có cú pháp đơn giản hơn và có thể được sử dụng để sản xuất các bài báo và ấn phẩm khoa học chất lượng cao. Dự án hiện bao gồm trang bìa, tóm tắt, văn bản, tài liệu tham khảo, v.v. của bài báo và người dùng có thể sửa đổi và tùy chỉnh nó theo nhu cầu của họ.



== trích dẫn

Đây là một tham chiếu đến các tài liệu tham khảo trong mẫu Latex cộng đồng nguồn mở@tex1989 @nikiforov2014 @algebra2000 @LuMan2016:Small-Spectral-Radius @HuQiShao2013:Cored-Hypergraphs @LinZhou2016:Distance-Spectral @KangNikiforov2014:Extremal-Problems @Qi2014:H-Plus-Eigenvalues @Nikiforov2017:Symmetric-Spectrum @BuFanZhou2016:Z-eigenvalues @impagliazzo2001complexity @impagliazzo2001problems @elffers2014scheduling @chrobak2017greedy @paturi1997satisfiability @book1980michael @papadimitriou1998combinatorial，Bạn có thể bấm vào số thứ tự để chuyển đến cuối văn bản để xem định dạng trích dẫn.



#pagebreak()

= Mẫu biểu đồ

== mẫu biểu đồ

// Đã thêm tham chiếu vào biểu đồ
Như được hiển thị bởi @fig-acm là một hình ảnh mẫu.

#figure(
  image("../template/images/rust.png", width: 50%),
  caption: [
    "XYZZZZ"
  ],
) <fig-acm>

== Mẫu ví dụ

@tab-acmer Hiện một số blogger.

#figure(
  table(
     columns: (auto, auto, auto,auto),
     [gọi như thế nào], [bộ phận bạn đang ở], [một câu để giới thiệu], [một liên kết],
      [Mauve], [Jike 2018], [Người Ali], [https://hukeqing.github.io],
      [jujimeizuo], [Jike 2019], [Gà rau], [http://www.jujimeizuo.cn],
      [kaka], [Jike 2019], [Nghiên cứu Hangdian], [https://ricar0.github.io],
      [lx_tyin], [2020 Ji Ke], [Cao thủ huy chương vàng], [lxtyin.ac.cn]
  ),
  caption : [
    ZJGSU ACMer
  ]
) <tab-acmer>

Biểu mẫu tương tự như hình, nhưng cách nhập biểu mẫu phức tạp hơn một chút, nên vào trang web chính thức của typst để tìm hiểu, mức độ tự do rất cao và khả năng tùy biến rất mạnh.

#v(10em)
Hãy xem @tbl1, những ô không có trường là tất cả nội dung của ô (mỗi ô được bao bọc bởi []), được sắp xếp theo chiều ngang khi căn chỉnh nằm ngang và bao bọc sau khi kết thúc.
#figure(
  table(
    columns: (100pt, 100pt, 100pt),
    inset: 10pt,
    stroke: 0.7pt,
    align: horizon,
    [], [*Area*], [*Parameters*],
    image("../images/typst.jpeg", height: 10%),
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],
    image("../images/rust.png", height: 10%),
    $ sqrt(2) / 12 a^3 $,
    [$a$: kích thước chiều dài]
  ),
  caption: "Bảng mẫu phô mai"
) <tbl1>

#pagebreak()
= mẫu công thức

Công thức được bao bọc bởi hai \$, nhưng ngữ pháp không giống với LaTeX, nếu bạn có nhiều nhu cầu về công thức, trước tiên nên đọc hướng dẫn trên trang web chính thức, nhưng typst vẫn còn tương đối sớm và khả năng không thể loại trừ việc thêm ngữ pháp tương thích trong tương lai.

== công thức nội tuyến

Công thức nội tuyến $a^2 + b^2 = c^2$ Công thức nội tuyến.

== công thức độc lập

Công thức độc lập, như được hiển thị bởi @eq-1.

$
    sum_(i=1)^(n) F_i(x) = F_1(x) + F_2(x) + ... + F_n(x)
$ <eq-1>

Công thức độc lập, như được hiển thị bởi @eq-2.

$
    F_1(x) + F_2(x) + ... + F_n(x) = sum_(i=1)^(n) F_i(x)
$ <eq-2>

#pagebreak()

= danh sách ví dụ

== danh sách không có thứ tự

- danh sách không có thứ tự 1: 1

- Danh sách không có thứ tự 2: 2

== danh sách sắp xếp
1. Danh sách thứ tự 1
2. Danh sách thứ tự 2


Nếu muốn tự xác định, bạn có thể tự đặt đánh số, nên bọc nó bằng \#[] để đảm bảo rằng nó chỉ có hiệu lực trong phạm vi này:
#[
#set enum(numbering: "1.a)")
+ danh sách tùy chỉnh 1
   + Danh sách tùy chỉnh 1.1
+ danh sách tùy chỉnh 2
   + Danh sách tùy chỉnh 2.1
]


#pagebreak()
= Đây là phần giữ chỗ của chương

== trình giữ chỗ cho tiêu đề cấp hai 1

== Giữ chỗ tiêu đề phụ 2

== tiêu đề phụ giữ chỗ 3

== tiêu đề phụ giữ chỗ 4

=== giữ chỗ tiêu đề cấp 3 1

=== giữ chỗ tiêu đề cấp 3 2

==== trình giữ chỗ cấp 4 tiêu đề 1

==== trình giữ chỗ cấp 4 tiêu đề 2

== tiêu đề phụ giữ chỗ 5

== tiêu đề phụ giữ chỗ 6
