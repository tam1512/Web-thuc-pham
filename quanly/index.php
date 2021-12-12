<!DOCTYPE html>
<html>
<head>
  <meta charset=utf-8>
  <title>Quản lý</title>
      <link rel="stylesheet"  href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"  href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet"  href="../bootstrap/js/bootstrap.bundle.js">
    <link rel="stylesheet"  href="../bootstrap/js/bootstrap.bundle.min.js">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body> 
    <div class="container">
      <div class="menu">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link" href="#">Thống kê doanh thu</a>
            <a class="nav-item nav-link" href="addcustomer.php">Quản lý sản phẩm</a>
            <a class="nav-item nav-link" href="allProduct.php">Quản lý khách hàng</a>
            <a class="nav-item nav-link" href="customerOrder.php">Quản lý đơn hàng</a>
            <a class="nav-item nav-link" href="addProduct.php">Xem liên hệ</a>
            <li class="nav-item">
              <a class="nav-link" href="../customer/logout.php">ĐĂNG XUẤT</a>
            </li>
          </div>
        </div>
      </nav>
    </div>
    <canvas id="myChart"  style="margin-top: 50px;width:;"></canvas> 
</div>
      
  </body>
  <script>
    let myChart = document.getElementById('myChart').getContext('2d');
    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 18;
    Chart.defaults.global.defaultFontColor = '#777';

    let massPopChart = new Chart(myChart, {
      type:'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        labels:['Boston', 'Worcester', 'Springfield', 'Lowell', 'Cambridge', 'New Bedford'],
        datasets:[{
          label:'Population',
          data:[
            617594,
            181045,
            153060,
            106519,
            105162,
            95072
          ],
          //backgroundColor:'green',
          backgroundColor:[
            'rgba(255, 99, 132, 0.6)',
            'rgba(54, 162, 235, 0.6)',
            'rgba(255, 206, 86, 0.6)',
            'rgba(75, 192, 192, 0.6)',
            'rgba(153, 102, 255, 0.6)',
            'rgba(255, 159, 64, 0.6)',
            'rgba(255, 99, 132, 0.6)'
          ],
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options:{
        title:{
          display:true,
          text:'Largest Cities In Massachusetts',
          fontSize:25
        },
        legend:{
          display:true,
          position:'right',
          labels:{
            fontColor:'#000'
          }
        },
        layout:{
          padding:{
            left:50,
            right:0,
            bottom:0,
            top:0
          }
        },
        tooltips:{
          enabled:true
        }
      }
    });
  </script>
  </html>