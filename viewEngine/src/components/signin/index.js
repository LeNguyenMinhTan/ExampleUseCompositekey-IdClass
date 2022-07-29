import React from "react";
import IconButton from "@mui/material/IconButton";
import OutlinedInput from "@mui/material/OutlinedInput";
import InputLabel from "@mui/material/InputLabel";
import InputAdornment from "@mui/material/InputAdornment";
import FormControl from "@mui/material/FormControl";
import TextField from "@mui/material/TextField";
import Visibility from "@mui/icons-material/Visibility";
import VisibilityOff from "@mui/icons-material/VisibilityOff";

import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";
import Switch from "@mui/material/Switch";
import FormControlLabel from "@mui/material/FormControlLabel";
import Link from "@mui/material/Link";
import Stack from "@mui/material/Stack";
//icon
import FacebookIcon from "@mui/icons-material/Facebook";
import GitHubIcon from "@mui/icons-material/GitHub";
import GoogleIcon from "@mui/icons-material/Google";

export default function Signin() {
  const [values, setValues] = React.useState({
    password: "",
    showPassword: false,
    gilad: true,
  });

  const handleChange = (prop) => (event) => {
    setValues({ ...values, [prop]: event.target.value });
  };

  const handleClickShowPassword = () => {
    setValues({
      ...values,
      showPassword: !values.showPassword,
    });
  };

  const handleMouseDownPassword = (event) => {
    event.preventDefault();
  };

  const handleChangeSwitch = (event) => {
    setValues({
      ...values,
      [event.target.name]: event.target.checked,
    });
  };

  return (
    <div
      style={{
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        minHeight: "100vh",
        backgroundRepeat: "no-repeat",
        backgroundAttachment: "fixed",
        backgroundSize: "cover",
        backgroundImage: 'url("https://wallpaperaccess.com/full/1994605.jpg")',
      }}
    >
      <div
        style={{
          position: "relative",
          width: "459px",
          height: "492px",
          background: "#FFFF",
          borderRadius: "20px",
          boxShadow: "0 35px 80px rgba(0,0,0,0.15)",
        }}
      >
        <div
          style={{
            position: "absolute",
            left: "50%",
            top: "-5%",
            transform: "translateX(-50%)",
            width: "427px",
            height: "154.75px",
            background: "#3a93ee",
            borderRadius: "15px",
          }}
        >
          <div
            style={{
              paddingTop: "10px",
              textAlign: "center",
              color: "#ffff",
            }}
          >
            <div>
              <div>
                <h2>Sign in</h2>
              </div>
              <div>
                <IconButton>
                  <FacebookIcon style={{ color: "#ffff" }} />
                </IconButton>
                <IconButton>
                  <GitHubIcon style={{ color: "#ffff" }} />
                </IconButton>
                <IconButton>
                  <GoogleIcon style={{ color: "#ffff" }} />
                </IconButton>
              </div>
            </div>
          </div>
        </div>

        <div style={{ marginTop: "150px" }}>
          <Stack
            style={{
              direction: "column",
              justifyContent: "center",
              alignItems: "center",
              spacing: "1",
            }}
          >
            <Grid citem xs={12} md={12}>
              <FormControl
                sx={{ m: 1, width: "412px", height: "44px" }}
                variant="outlined"
              >
                <TextField
                  id="outlined-textarea"
                  label="Email"
                  placeholder="abc@gmail.com"
                  multiline
                />
              </FormControl>
            </Grid>
            <Grid citem xs={12} md={12}>
              <FormControl
                sx={{ m: 1, width: "412px", height: "44px", marginTop: "16px" }}
                variant="outlined"
              >
                <InputLabel htmlFor="outlined-adornment-password">
                  Password
                </InputLabel>
                <OutlinedInput
                  id="outlined-adornment-password"
                  type={values.showPassword ? "text" : "password"}
                  value={values.password}
                  onChange={handleChange("password")}
                  endAdornment={
                    <InputAdornment position="end">
                      <IconButton
                        aria-label="toggle password visibility"
                        onClick={handleClickShowPassword}
                        onMouseDown={handleMouseDownPassword}
                        edge="end"
                      >
                        {values.showPassword ? (
                          <VisibilityOff />
                        ) : (
                          <Visibility />
                        )}
                      </IconButton>
                    </InputAdornment>
                  }
                  label="Password"
                />
              </FormControl>
            </Grid>
          </Stack>
          <FormControlLabel
            style={{ paddingLeft: "50px", marginTop: "19px" }}
            control={
              <Switch
                checked={values.gilad}
                onChange={handleChangeSwitch}
                name="gilad"
              />
            }
            label="Remember me"
          />
          <div
            style={{
              display: "block",
              textAlign: "center",
              marginTop: "10px",
            }}
          >
            <div>
              <Button
                style={{
                  width: "412px",
                  height: "36px",
                  background: "#3a93ee",
                  marginTop: "21px",
                }}
                variant="contained"
                disableElevation
              >
                sign in
              </Button>
            </div>
          </div>
          <div
            style={{
              textAlign: "center",
              paddingTop: "30px",
            }}
          >
            <span>Don't have an account?</span>
            <Link href="/google.com" underline="none">
              Sign up
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}
