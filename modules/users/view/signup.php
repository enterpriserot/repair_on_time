<br><br>
<p><h2>New user:</h2></p>
 <div class="status alert alert-success" style="display: none"></div>
<form name="formusers" id="formusers" class="formusers">
    <br>
      <p>
        <label for="email">e-mail:</label>
        <input type="email" name="email" id="email" required="required" placeholder="email"/>
        <span id="error_email" class="styerror"></span>
      </p>
      <p>
        <label for="password">Password:</label>
  		  <input type="password" name="password" id="password" placeholder="Password"/>
        <span id="error_password" class="styerror"></span>
      </p>
      <p>
        <label for="password2">Repeat password:</label>
        <input type="password" name="password2" id="password2" placeholder="Repeat password"/>
        <span id="error_password2" class="styerror"></span>
      </p>
      <input type="button" class="btn btn-primary" name="submit_user" id="submit_user" value="Submit">
</form>
<link rel="stylesheet" href="<?php echo USERS_CSS_PATH ?>users.css">
<script src="<?php echo USERS_JS_PATH; ?>signup.js"></script>
