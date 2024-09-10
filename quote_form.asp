

                                <div class="banner-form">
                                    <div class="one-section-title three-section-title">
                                        <h2>Get A Whole Of Market Quote</h2>
                                    </div>
                                    <div class="tab-content" id="tabContent">
                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                            <form action="search.asp" method="post">
                                                <div class="row">
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-message-square-detail'></i>
                                                            </label>
                                                            <input type="text" class="form-control required" placeholder="Contact Name *" name="your_name" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Your Contact Details So We Can Send Your Quote">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bxs-business'></i>
                                                            </label>
                                                            <input type="text" class="form-control required" placeholder="Company/Developer Name *" name="company_name">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-envelope'></i>
                                                            </label>
                                                            <input type="email" class="form-control required" placeholder="Your Contact Email *" name="your_email" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Your Contact Details So We Can Send Your Quote">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-phone'></i>
                                                            </label>
                                                            <input type="text" class="form-control required" placeholder="Your Contact Telephone *" name="your_telephone" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Your Contact Details If We Have Any Questions">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <div class="dropdown">
                                                                <label>
                                                                    <i class='bx bxs-check-circle'></i>
                                                                </label>
                                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    Type of cover required *
                                                                </a>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Brand New Building">New Development</a>
                                                                    <a class="dropdown-item" href="#" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="A Personal Project You Are Building Yourself">Self-build</a>
                                                                    <a class="dropdown-item" href="#" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Already Started/Built">Retrospective</a>
                                                                    <a class="dropdown-item" href="#" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Offices, Warehouses etc.">Commercial</a>
                                                                    <a class="dropdown-item" href="#">Housing Authority (12 years)</a>
                                                                </div>
                                                                <input type="hidden" name="cover_type" class="required" value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <div class="dropdown">
                                                                <label>
                                                                    <i class='bx bx-building-house'></i>
                                                                </label>
                                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    State of project *
                                                                </a>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Initial Stages</a>
                                                                    <a class="dropdown-item" href="#">Ready To Start</a>
                                                                    <a class="dropdown-item" href="#">In Progress</a>
                                                                    <a class="dropdown-item" href="#">Completed</a>
                                                                </div>
                                                                <input type="hidden" name="project_state" class="required" value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-calendar'></i>
                                                            </label>
                                                            <input type="text" class="form-control" placeholder="Contractor Name" name="contractor_name">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-location-plus'></i>
                                                            </label>
                                                            <input type="text" class="form-control" placeholder="UK Location" name="build_location" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Geographic Location - Be As Detailed Or As Vague As You Wish">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <div class="dropdown">
                                                                <label>
                                                                    <i class='bx bx-message-square-detail'></i>
                                                                </label>
                                                                <!--<input type="text" class="form-control" placeholder="Total Buld Cost (£) *" name="build_gdv">-->
                                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        Total Buld Cost *
                                                                    </a>
                                                                <div class="dropdown-menu">
                                                                <% For rep = 100000 to 5000000 step 100000 %>
                                                                    <a class="dropdown-item" href="#">£<%= formatnumber(rep,0) %> to £<%= formatnumber(rep+100000-1,0) %></a>
                                                                <% next %>
                                                                <% For rep = 5000000 to 50000000 step 5000000 %>
                                                                    <a class="dropdown-item" href="#">£<%= formatnumber(rep,0) %> to £<%= formatnumber(rep+5000000-1,0) %></a>
                                                                <% next %>
                                                                </div>
                                                                <input type="hidden" name="total_buld" class="required" value="">
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <div class="dropdown">
                                                                <label>
                                                                    <i class='bx bx-message-square-detail'></i>
                                                                </label>
                                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            Number Of Units *
                                                                        </a>
                                                                <div class="dropdown-menu">
                                                                    <% For rep = 1 to 19 step 1 %>
                                                                        <a class="dropdown-item" href="#"><%= formatnumber(rep,0) %></a>
                                                                    <% next %>
                                                                    <% For rep = 20 to 200 step 5 %>
                                                                        <a class="dropdown-item" href="#"><%= formatnumber(rep,0) %> to <%= formatnumber(rep+5-1,0) %></a>
                                                                    <% next %>
                                                                </div>
                                                                <input type="hidden" class="form-control required" placeholder="Number of units *" name="number_of_units">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-phone'></i>
                                                            </label>
                                                            <input type="text" class="form-control" name="spoken_to_insurers" placeholder="Spoken to Insurers" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="Have You Already Spoken To Anyone?">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-lg-6">
                                                        <div class="form-group">
                                                            <label>
                                                                <i class='bx bx-search'></i>
                                                            </label>
                                                            <input type="text" class="form-control" name="how_you_found_us" placeholder="How You Found Us" data-bs-custom-class="custom-tooltip" data-bs-toggle="tooltip" data-bs-title="So We Can Improve Our Marketing">
                                                        </div>
                                                    </div>
                                                    <!------ --->
                                                    <div class="col-lg-12">
                                                        <div class="form-group form-group-bottom d-flex align-items-center">
                                                            <button type="submit" class="btn cmn-banner-btn">
                                                                Get a quote
                                                                <i class='bx bx-right-arrow-alt'></i>
                                                            </button>
                                                            <span class="required-text ms-3">* Information We Require To Process Your Quote</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <input type="hidden" name="gclid" value="" >
                                            </form>
                                        </div>
                                    </div>
                                </div>
