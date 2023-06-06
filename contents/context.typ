
= Introduction

== Giới thiệu khái quát về Typst 


+ Typst is the latest and hottest markup text language. Its positioning is similar to LaTeX. It has strong typesetting capabilities, writes documents through certain grammar, and then generates pdf files. Compared with LaTeX, it has the following advantages:


+ Compilation is extremely fast: because it provides the function of incremental compilation, it can basically compile a pdf file within one second after modification. typst provides the function of monitoring modification and automatic compilation, and can read the effect while writing like Markdown.

+ The environment is simple to build: natively supports non-Latin languages such as China, Japan, and Korea, so there is no need to worry about character compatibility issues and download several G environments. Just download the command line program to start compiling and generating pdf.

+ Grammatically friendly: For ordinary typesetting needs, the difficulty of getting started is comparable to Markdown, and the text source code is highly readable: no more backslashes and curly braces

Personal opinion: as easy to use as Markdown, as powerful as LaTeX

#figure(
  image("../template/images/typst.jpeg", width: 50%),
  caption: [
    "Typst Logo"
  ],
) <fig-typst-logo>

#figure(
  image("../template/images/rust.png", width: 50%),
  caption: [
    "Crate Logo"
  ],
) <fig-crate-logo>

#figure(
  image("../template/images/typst_long.png", width: 100%),
  caption: [
    "Typst Long Logo"
  ],
) <fig-typst-logo-2nlong>

== Ngôn ngữ Rust
*Giới thiệu*
_Ghi chú: Phiên bản này cũng chính là phiên bản in The Rust Programming Language và ebook No Starch Press của sách._

- Chào mừng bạn đến với Ngôn ngữ lập trình Rust, một cuốn sách giới thiệu về Rust. "Ngôn ngữ lập trình Rust" sẽ giúp bạn viết các phần mềm nhanh và tin cậy hơn. Việc thiết kế ngôn ngữ lập trình luôn phải giải quyết bài toán xung đột giữa kiểm soát ở cấp thấp và việc hỗ trợ con người ở bậc cao; Rust thách thức sự xung đột này. Thông qua khả năng cân bằng giữa khả năng tiếp thu công nghệ mạnh mẽ và kinh nghiệm phát triển tuyệt vời, Rust cung cấp cho bạn khả năng kiểm soát các chi tiết ở cấp độ thấp (chẳng hạn việc sử dụng bộ nhớ) mà vẫn tránh được những phiền toái vốn hay gặp phải khi phải làm việc ở cấp độ này.

*Rust được dành cho ai*
Rust khá lý tưởng cho nhiều người vì nhiều lý do khác nhau. Hãy cũng xem qua một vài trong số những nhóm lý do quan trọng nhất.

_*Các nhóm phát triển*_
- Rust đang dần chứng minh như một công cụ hữu hiệu cho việc cộng tác giữa những nhóm lớn nhà phát triển với các mức độ kiến thức về lập trình hệ thống khác nhau. Mã lệnh cấp thấp thường dính phải các loại lỗi ẩn, vốn chỉ có thể tìm thấy thông qua việc kiểm thử hoặc review cẩn thận bởi các nhà phát triển nhiều kinh nghiệm. Trong Rust, trình biên dịch đóng vai trò như người gác cổng bằng cách từ chối các loại lỗi như vậy, bao gồm cả các lỗi liên quan đến việc xử lý đồng thời. Bằng cách kết hợp với trình dịch, nhóm phát triển có thể dành thời gian tập trung cho logic chương trình hơn là tìm kiếm các lỗi.

+ *Rust cũng đồng thời cung cấp các công cụ hỗ trợ phát triển đến cho thế giới lập trình hệ thống:*

Cargo, công cụ quản lý thư viện và build, cho phép thêm, dịch, quản lý các thư viện phụ thuộc dễ dàng và đồng bộ xuyên suốt hệ sinh thái Rust.
Công cụ định dạng code Rustfmt đảm bảo sự đồng nhất về phong cách viết code giữa các nhà phát triển.
The Rust Language Server cung cấp sức mạnh cho các Integrated Development Environment (IDE) để hỗ trợ các tính năng như code completion và các thông báo lỗi tại chỗ.
Bằng cách sử dụng các công cụ ở trên cũng như một số công cụ khác trong hệ sinh thái Rust, các nhà phát triển có thể viết một cách hiệu quả các mã lệnh cấp hệ thống.

=== Sinh viên
Rust được dành cho sinh viên và bất kỳ ai yêu thích việc học các khái niệm hệ thống. Nhiều người thông qua sử dụng Rust đã học về những chủ đề như phát triển hệ điều hành. Cộng đông Rust cũng rất sẵn sàng chào đón và hỗ trợ trả các câu hỏi của sinh viên. Thông qua những nỗ lực tương tự như cuốn sách này, các nhóm Rust muốn làm cho việc hiểu các khái niệm về hệ thống dễ dàng hơn với nhiều người, đặc biệt những người mới làm quen với lập trình.

=== Các công ty
Hàng trăm công ty, cả lớn và nhỏ, sử dụng Rust cho nhiều nhiệm vụ khác nhau trong hoạt động của họ. Những nhiệm vụ đó bao gồm các công cụ dòng lệnh, dịch vụ web, các công cụ DevOps, các thiết bị nhúng, các trình phân tích và mã hóa âm thanh hình ảnh, tiền mã hóa, tin sinh học, các máy tìm kiếm, các ứng dụng IoT, học máy, và thậm chí các phần chính của trình duyệt web FireFox.

=== Các nhà phát triển mã nguồn mở
Rust dành cho những người tạo nên ngôn ngữ, cộng đồng, công cụ phát triển và các thư viện. Chúng tôi sẽ rất vui khi được bạn góp phần xây dựng ngôn ngữ Rust.

=== Những người quan tâm đến tốc độ và ổn định
Rust được dành cho những người đam mê tốc độ và sự ổn định trong một ngôn ngữ. Với tốc độ, chúng tôi nó về cả tốc độ thực thi chương trình và cả tốc độ mà Rust cho phép bạn viết ra chúng. Các phép kiểm tra của trình dịch Rust đảm bảo sự ổn định thông qua các đặc tính thêm vào và việc tái cấu trúc (refactoring). Điều này ngược lại với các mã lệnh dễ-mắc-lỗi khi viết bằng các ngôn ngữ không có các phép tra đó, vốn làm cho các nhà phát triển ngại việc chỉnh sửa. Bằng việc đánh vào sự trừu tượng, hoặc các đặc tính ở cấp độ cao không gây phát sinh ra thêm chi phí khi dịch ra mã lệnh cấp thấp, Rust cho phép các mã lệnh này thực thi nhanh và an toàn như khi viết bằng tay.

Ngôn ngữ Rust cũng hy vọng hỗ trợ thêm nhiều người dùng khác; những người được nhắc đến ở đây chỉ đơn thuần là một trong số những người tham gia nhiều nhất. Tổng thể lại, tham vọng lớn nhất của Rust là loại bỏ những sự đánh đổi mà lập trình viên phải chấp nhận trong hàng thập kỷ qua, để cung cấp sự an toàn và năng suất, tốc độ và sự hỗ trợ bậc cao của ngôn ngữ. Hãy thử và xem Rust liệu có thể trở thành lựa chọn cho công việc của bạn.

=== Cuốn sách này dành cho ai
Cuốn sách này cho rằng bạn đã viết code bằng một ngôn ngữ khác nhưng không chỉ rõ là ngôn ngữ nào. Chúng tôi đã cố gắng tạo ra các tài liệu có thể dùng được bởi nhiều người với nhiều nền tảng lập trình khác nhau. Chúng tôi không dành nhiều thời gian để nói về những thứ như lập trình là gì và bạn nghĩ về nó như thế nào. Nếu bạn là người hoàn toàn mới với việc lập trình, có lẽ tốt hơn là bạn nên đọc trước một quyển sách chuyên về nhập môn lập trình.

=== Sử dụng quyển sách này như thế nào
Về tổng thể, quyển sách này cho là bạn đang đọc tuần tự từ đầu đến cuối. Các chương sau được xây dựng dựa trên các khái niệm được giới thiệu trong các chương trước, và các chương đầu có lẽ sẽ không đi vào chi tiết về một chủ đề cụ thể, thay vì vậy chúng ta sẽ quay lại chủ đề đó trong các chương sau.

- Bạn sẽ tìm thấy hai loại chương trong cuốn sách này: các chương khái niệm và các chương dự án. Trong các chương khái niệm, bạn sẽ học về một khía cạnh nào đó của Rust. Trong các chương dự án, chúng ta sẽ cùng với nhau xây dựng các chương trình nhỏ, áp dụng những gì các bạn đã học. Các chương 2, 12 và 20 là các chương dự án; còn lại là các chương khái niệm.

+ Chương 1 hướng dẫn cách cài đặt Rust, làm sao để viết một chương trình "Hello, world!", và làm sao sử dung Cargo, công cụ quản lý các gói thư viện và build chương trình. Chương 2 là một phần giới thiệu kiểu "trên tay" về cách viết chương trình trong ngôn ngữ Rust, bạn cũng sẽ xây dựng một trò chơi đoán số. Chúng ta sẽ xem sơ các khái niệm ở cấp cao, rồi các chương sau đó sẽ cung cấp thêm các chi tiết. Nếu bạn muốn vọc vạch ngay, chương này là dành cho bạn. Đầu tiên, có lẽ bạn sẽ muốn bỏ qua chương 3, vốn giới thiệu các đặc tính của Rust tương tự trong các ngôn ngữ khác, và nhảy ngay đến chương 4 để học về hệ thống ownership của Rust. Tuy nhiên, nếu bạn là một người học cẩn trọng muốn học tất cả các chi tiết trước khi chuyển đến phần kế tiếp, có lẽ bạn sẽ bỏ qua chương 2 và đi thẳng đến chương 3, trở về lại chương 2 khi bạn muốn áp dụng những chi tiết mà bạn đã học.

+ Chương 5 thảo luận về struct và method, chương 6 giới thiệu về enum, các biểu thức match, và cấu trúc điều khiển if let. Bạn sẽ dùng struct và enum để tạo ra các kiểu tùy biến trong Rust.

+ Trong chương 7, bạn sẽ học về hệ thống module của Rust và về các quy tắc riêng tư khi tổ chức mã nguồn và hệ thống Application Programming Interface (API) của nó. Chương 8 thảo luận về một số kiểu tập hơn (collection) mà các thư viện chuẩn cung cấp, như vector, string và hash map. Chương 9 khám phá các triết lý cũng như kỹ thuật của Rust trong việc xử lý lỗi.

+ Chương 10 đào sâu và generic, strait và vòng đời, thứ mang lại sức mạnh để tạo ra các mã lệnh có thể dùng được với nhiều kiểu dữ liệu khác nhau. Chương 11 nói hoàn toàn về kiểm thử, thứ cần có để đảm bảo logic chương trình của bạn là chính xác, ngay cả khi đã có hệ thống an toàn của Rust. Trong chương 12, chúng ta sẽ xây dựng một tập con các tính năng từ câu lệnh grep, cho phép tìm kiếm các đoạn văn bản bên trong các file. Để làm điều này, chúng ta sẽ dùng nhiều các khái niệm đã thảo luận trong các chương trước.

+ Chương 13 khám phá closure và iterator: các tính năng của Rust vốn đến từ các ngôn ngữ lập trình hàm (functional programming). Trong chương 14, chúng ta sẽ khảo sát lại Cargo sâu hơn và nói về các phương pháp hay nhất để chia sẻ thư viện của bạn với những người khác. Chương 15 thảo luận về các con trỏ thông minh mà các thư viện chuẩn cung cấp, đồng thời nói về các trait cho phép chúng hoạt động.

+ Trong chương 16, chúng ta sẽ dạo qua các mô hình khác nhau của lập trình song song và nói về cách Rust hỗ trợ bạn viết đa luồng một cách dễ dàng. Chương 17 so sánh một số thành phần trong Rust với các khái niệm hướng đối tượng mà có lẽ bạn đã quen thuộc.

+ Chương 18 là phần tham khảo về mẫu và khớp mẫu, vốn là những cách thức mạnh mẽ để biểu đạt các ý tưởng trong suốt các chương trình Rust. Chương 19 là một bữa đại tiệc với nhiều chủ đề nâng cao khác nhau, bao gồm unsafe Rust, macro, và nói thêm về vòng đời, trait, type, function và closure.

+ Trong chương 20, chúng ta sẽ hoàn thành một máy chủ web đa luồng cấp thấp.

- Cuối cùng, các phụ lục sẽ chứa nhiều thông tin hữu ích về ngôn ngữ theo dạng liệt kê dễ dàng để tham khảo. Phụ lục A chứa các từ khóa của Rust, phụ lục B chứa các toán từ và ký hiệu, phụ lục C chứa các trait có thể dẫn xuất lại được cung cấp bởi thư viện chuẩn, phụ lục D nói về các công cụ phát triển hữu ích, và phụ lục E nói về các phiên bản của Rust.

- Sẽ không có một cách sai để đọc quyển sách này: nếu bạn muốn nhảy qua một vài phần, cứ việc! Bạn cũng có thể nhảy ngược lại các chương trước khi gặp phải điều gì khó hiểu. Cứ đơn giản làm cái gì bạn cảm thấy hiệu quả.


- Một phần quan trọng khi học Rust là học cách đọc các thông báo lỗi mà trình biên dịch hiển thị: Chúng sẽ giúp bạn tạo ra các code làm việc được. Do đó, chúng tôi sẽ cung cấp nhiều ví dụ không thể dịch được cùng với thông báo lỗi trình dịch sẽ hiển thị trong trường hợp tương ứng. Hãy nhớ nếu bạn nhập và chạy một ví dụ ngẫu nhiên, nó có thể bị lỗi! Hãy đảm bảo bạn đã đọc những nội dung xung quanh để xem liệu code bạn đang thử chạy có tạo ra lỗi hay không. Ferris cũng sẽ giúp bạn phân biệt những code nào sẽ không chạy:

#figure(
  image("../template/images/typst.jpeg", width: 50%),
  caption: [
    "Typst Logo"
  ],
) <fig-typst-logo-2>


Nguồn tham khảo tại đây #link("https://daohainam.github.io/rust-book/ch00-00-introduction.html") và #link("https://doc.rust-lang.org/book/")[tại đây]. 

Hiểu biết cá nhân: typst có hai môi trường, mã và nội dung, trong môi trường mã, nó sẽ được thực thi theo mã và trong môi trường nội dung, nó sẽ được phân tích thành văn bản thông thường, môi trường mã được biểu thị bằng {} và môi trường nội dung được đại diện bởi []. Nội dung bắt đầu bằng \# để kết nối với một đoạn mã, chẳng hạn như \#set quy tắc, và \# không cần thiết để gọi mã trong khối được đặt trong dấu ngoặc nhọn.

```cpp
void setFib(void)
{
  fib(1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 | 89, 10);
}
```

```python
def sqrt(x):
    return x**0.5
```


```c
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

// Train Data
float td[][2] = {
    // C   F
    {-40, -40},
    {-20, -4 },
    {0,   32 },
    {20,  68 },
    {40,  104},
    {60,  140},
    {80,  176},
    {100, 212},
};

#define N 8 // Number of item in Train Data


// Define the learning alpha
#define ALPHA 0.00001

// Define the number of iterations
#define EPOCS 100 * 1000
```
#pagebreak()
```c
// Define a function to compute the mean squared error
double cost(double w, double b) {
  double error = 0.0;
  for (int i = 0; i < N; ++i) {
    double x = td[i][0];
    double y = td[i][1];
    double d = y - (w * x + b);
    error += d * d;
  }
  return error / (int) N;
}

// Define a function to perform gradient descent
void gradient_descent(double *w, double *b) {
  // Derivative of cost function with respect to w or b
  double dw = 0.0;
  double db = 0.0;
  for (int i = 0; i < N; i++) {
    double x  = td[i][0];
    double y0 = td[i][1];
    double y  = *w * x + *b;
    dw += x * (y - y0);
    db += (y - y0);
  }
  // Update w and b using the learning rate and the derivatives
  *w = *w - ALPHA * dw;
  *b = *b - ALPHA * db;
}

// Define a function to train the neuron using gradient descent
void train(double *w, double *b) {
  for (int i = 0; i < EPOCS; i++) {
    gradient_descent(w, b);
    if (i % 101000 == 0)
      printf("Iteration: %d, Cost:%3.3f w=%.3lf b=%.3lf\n", i, cost(*w, *b), *w, *b);
  }
}

// Define a function to predict the output using the neuron
double predict(double x, double w, double b) {
  return w * x + b;
}
```
```c
int main() {
  // Initialize w and b randomly
  double w = (double) rand() / RAND_MAX;
  double b = (double) rand() / RAND_MAX;

  // Train the neuron using gradient descent
  train(&w, &b);

  // Print the final values of w and b
  printf("\nFinal values are: w = %f and b = %f\n\n", w, b);

  // Test the neuron with some new inputs
  double x_new = 50;                   // Celsius
  double y_new = predict(x_new, w, b); // Fahrenheit
  printf("Fahrenheit of 50C: 122F\n");
  printf("Prediction of 50C: %.1fF\n", y_new);

  return 0;
}
```

The output of running the script shows that the weight parameter converges to 2, which is the true slope of the data set. The bias parameter converges to 0, which is the true intercept of the data set. The cost function reaches its minimum value when the parameters are optimal. This means that our script successfully learns the linear relationship between *x* and *y* from the data set.

```log
Iteration: 0, Cost:3519.467 w=1.146 b=0.399
Iteration: 10000, Cost:227.957 w=1.981 b=13.954
Iteration: 20000, Cost:74.384 w=1.903 b=21.692
Iteration: 30000, Cost:24.272 w=1.859 b=26.112
Iteration: 40000, Cost:7.920 w=1.834 b=28.636
Iteration: 50000, Cost:2.584 w=1.819 b=30.079
Iteration: 60000, Cost:0.843 w=1.811 b=30.902
Iteration: 70000, Cost:0.275 w=1.806 b=31.373
Iteration: 80000, Cost:0.090 w=1.804 b=31.642
Iteration: 90000, Cost:0.029 w=1.802 b=31.795

Final values are: w = 1.801169 and b = 31.883127

Fahrenheit of 50C: 122F
Prediction of 50C: 121.9F
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