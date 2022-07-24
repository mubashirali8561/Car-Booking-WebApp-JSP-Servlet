<!DOCTYPE html>
<html lang="en">

<head>
  <title>Dashboard</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="./assets/css/app.min.css">
  <link rel="stylesheet" href="./assets/bundles/summernote/summernote-bs4.css">
  <link rel="stylesheet" href="./assets/bundles/jquery-selectric/selectric.css">
  <link rel="stylesheet" href="./assets/bundles/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
  <link rel="stylesheet" href="./assets/bundles/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="./assets/bundles/pretty-checkbox/pretty-checkbox.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="./assets/css/style.css">
  <link rel="stylesheet" href="./assets/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="./assets/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='assets/img/favicon.ico' />
</head>

<body>
  <div class="loader"></div>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
      <%@ include file="includes/menu.jsp" %> 
      <%@ include file="includes/header.jsp" %> 
      <!-- Main Content -->
      
      <div class="main-content">
        <section class="section">
          <div class="section-body">
            <!-- add content here -->
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Add New Car</h4>
                  </div>
                    <form action="../AddCar" method="POST" enctype="multipart/form-data">
                  <div class="card-body">
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                      <div class="col-sm-12 col-md-7">
                        <input type="text" name="title" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Discription</label>
                      <div class="col-sm-12 col-md-7">
                          <textarea name="discription" class="summernote-simple"></textarea>
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Rent</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="rent" class="form-control">
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Thumbnail</label>
                      <div class="col-sm-12 col-md-7">
                        <div id="image-preview" class="image-preview">
                          <label for="image-upload" id="image-label">Choose File</label>
                          <input type="file" name="carimg" id="image-upload" /> 
                        </div>
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Color</label>
                      <div class="col-sm-12 col-md-7">
                        <div class="row gutters-xs">
                        <div class="col-auto">
                          <label class="colorinput">
                            <input name="color" type="radio" value="primary" class="colorinput-input" />
                            <span class="colorinput-color bg-primary"></span>
                          </label>
                        </div>
                        <div class="col-auto">
                          <label class="colorinput">
                            <input name="color" type="radio" value="secondary" class="colorinput-input" />
                            <span class="colorinput-color bg-secondary"></span>
                          </label>
                        </div>
                        <div class="col-auto">
                          <label class="colorinput">
                            <input name="color" type="radio" value="danger" class="colorinput-input" />
                            <span class="colorinput-color bg-danger"></span>
                          </label>
                        </div>
                        <div class="col-auto">
                          <label class="colorinput">
                            <input name="color" type="radio" value="warning" class="colorinput-input" />
                            <span class="colorinput-color bg-warning"></span>
                          </label>
                        </div>
                        <div class="col-auto">
                          <label class="colorinput">
                            <input name="color" type="radio" value="info" class="colorinput-input" />
                            <span class="colorinput-color bg-info"></span>
                          </label>
                        </div>
                        <div class="col-auto">
                          <label class="colorinput">
                            <input name="color" type="radio" value="success" class="colorinput-input" />
                            <span class="colorinput-color bg-success"></span>
                          </label>
                        </div>
                      </div>
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Mileage</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="mileage" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Transmission</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="transmission" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Seats</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="seats" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Luggage</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="luggage" class="form-control">
                      </div>
                    </div>
                       <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Fuel</label>
                      <div class="col-sm-12 col-md-7">
                          <input type="text" name="fuel" class="form-control">
                      </div>
                    </div>
                      <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Features</label>
                      <div class="col-sm-12 col-md-7">
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Airconditions">
                      <div class="state p-success-o">
                        <label> Air Condition</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="ChildSeat">
                      <div class="state p-success-o">
                        <label> Child Seat</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="GPS">
                      <div class="state p-success-o">
                        <label> GPS</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Luggage_tick">
                      <div class="state p-success-o">
                        <label> Luggage</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Music">
                      <div class="state p-success-o">
                        <label> Music</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="SeatBelt">
                      <div class="state p-success-o">
                        <label> Seat Belt</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="SleepingBed">
                      <div class="state p-success-o">
                        <label> Sleeping Bed</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Water">
                      <div class="state p-success-o">
                        <label> Water</label>
                      </div>
                    </div><br>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Bluetooth">
                      <div class="state p-success-o">
                        <label> Bluetooth</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="Onboardcomputer">
                      <div class="state p-success-o">
                        <label> On board computer</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Audioinput">
                      <div class="state p-success-o">
                        <label> Audio input</label>
                      </div>
                    </div>
                        <br><div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Long_Term_Trips">
                      <div class="state p-success-o">
                        <label> Long Term Trips</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="CarKit">
                      <div class="state p-success-o">
                        <label> Car Kit</label>
                      </div>
                    </div>
                          <div class="pretty p-default p-round p-smooth p-plain">
                              <input type="checkbox" name="Remote_central_locking">
                      <div class="state p-success-o">
                        <label> Remote central locking</label>
                      </div>
                    </div>
                        <div class="pretty p-default p-round p-smooth p-plain">
                            <input type="checkbox" name="Climatecontrol">
                      <div class="state p-success-o">
                        <label> Climate control</label>
                      </div>
                    </div>
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                      <div class="col-sm-12 col-md-7">
                          <button type="Submit" class="btn btn-primary">Save New Car</button>
                        <button class="btn btn-warning">Cancel</button>
                      </div>
                    </div>
                  </div></form>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <%@ include file="includes/footer.jsp" %> 
    </div>
  </div>
  <%@ include file="includes/script.jsp" %>
</body>


<!-- blank.html  21 Nov 2019 03:54:41 GMT -->
</html>