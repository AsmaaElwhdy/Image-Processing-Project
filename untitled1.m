function varargout = untitled1(varargin)
% UNTITLED1 MATLAB code for untitled1.fig
%      UNTITLED1, by itself, creates a new UNTITLED1 or raises the existing
%      singleton*.
%
%      H = UNTITLED1 returns the handle to a new UNTITLED1 or the handle to
%      the existing singleton*.
%
%      UNTITLED1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED1.M with the given input arguments.
%
%      UNTITLED1('Property','Value',...) creates a new UNTITLED1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 21-Dec-2022 01:23:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled1 (see VARARGIN)

% Choose default command line output for untitled1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)
% hObject    handle to upload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
x=uigetfile('*.*');
x=imread(x);
axes(handles.axes1);
imshow(x);


% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=MinFilter(x);
x=A;
axes(handles.axes2);
imshow(x)



% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=Maxfilter(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in Median.
function Median_Callback(hObject, eventdata, handles)
% hObject    handle to Median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=MedianFilter(x);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in RgbToGray.
function RgbToGray_Callback(hObject, eventdata, handles)
% hObject    handle to RgbToGray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=rgbtogray(x,2);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in RgbToBinary.
function RgbToBinary_Callback(hObject, eventdata, handles)
% hObject    handle to RgbToBinary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=rgb2bin(x,2,127);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in GrayToBinary.
function GrayToBinary_Callback(hObject, eventdata, handles)
% hObject    handle to GrayToBinary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=gray2bin(x,127);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
axes(handles.axes2);
histogram_rgb_gray(x);


% --- Executes on button press in histogram_eq.
function histogram_eq_Callback(hObject, eventdata, handles)
% hObject    handle to histogram_eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
axes(handles.axes2);
b=histeq(x);
imhist(b)

% --- Executes on button press in contrast_stretching.
function contrast_stretching_Callback(hObject, eventdata, handles)
% hObject    handle to contrast_stretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=contrastStretching(x,6,132);
x=A;
axes(handles.axes2);
imshow(x)



% --- Executes on button press in Brightness.
function Brightness_Callback(hObject, eventdata, handles)
% hObject    handle to Brightness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=imBrightness(x,1,3);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in Root.
function Root_Callback(hObject, eventdata, handles)
% hObject    handle to Root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=root(x);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in Negative.
function Negative_Callback(hObject, eventdata, handles)
% hObject    handle to Negative (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=negative(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in Log.
function Log_Callback(hObject, eventdata, handles)
% hObject    handle to Log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=LOG_EXP(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in Inverse_log.
function Inverse_log_Callback(hObject, eventdata, handles)
% hObject    handle to Inverse_log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
axes(handles.axes2);
in_LOG_EXP(x);


% --- Executes on button press in power.
function power_Callback(hObject, eventdata, handles)
% hObject    handle to power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=powers(x,0.4);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in average.
function average_Callback(hObject, eventdata, handles)
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
w=fspecial('average',[3 3]);
A=imfilter(x,w);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in weight.
function weight_Callback(hObject, eventdata, handles)
% hObject    handle to weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
w=1/16*[1 2 1;2 4 2;1 2 1];
A=imfilter(x,w);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in correlation.
function correlation_Callback(hObject, eventdata, handles)
% hObject    handle to correlation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
axes(handles.axes2);
co(x);


% --- Executes on button press in midpoint.
function midpoint_Callback(hObject, eventdata, handles)
% hObject    handle to midpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=MidpointFilter(x,31);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in saltandpeppers.
function saltandpeppers_Callback(hObject, eventdata, handles)
global x
A=saltAndPepper(x,0.3,0.4);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in uniform_noise.
function uniform_noise_Callback(hObject, eventdata, handles)
global x
A=uniformNoise(x,0.3,0.4);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in gaussian_noise.
function gaussian_noise_Callback(hObject, eventdata, handles)
global x
A=gaussianNoise(x,0.3,0.4);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in inverseFourier.
function inverseFourier_Callback(hObject, eventdata, handles)
% hObject    handle to inverseFourier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=inverseFourierTransform(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in fourier.
function fourier_Callback(hObject, eventdata, handles)
% hObject    handle to fourier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
A=fourierTransform(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in edge_det.
function edge_det_Callback(hObject, eventdata, handles)
global x
A=edge_det(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in edge_horzan.
function edge_horzan_Callback(hObject, eventdata, handles)
global x
A=edge_horzan(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in edge_ver.
function edge_ver_Callback(hObject, eventdata, handles)
global x
A=edge_ver(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in edge_left_dia.
function edge_left_dia_Callback(hObject, eventdata, handles)
global x
A=edge_left_dia(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in edge_right_dia.
function edge_right_dia_Callback(hObject, eventdata, handles)
global x
A=edge_right_dia(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in sharpening.
function sharpening_Callback(hObject, eventdata, handles)
global x
A=sharpening(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in sharpening_horizan.
function sharpening_horizan_Callback(hObject, eventdata, handles)
global x
A=sharpening_horizan(x);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in sharpening_ver.
function sharpening_ver_Callback(hObject, eventdata, handles)
global x
A=sharpening_ver(x);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in sharpening_left_dia.
function sharpening_left_dia_Callback(hObject, eventdata, handles)
global x
A=sharpening_left_dia(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in sharpening_right_dia.
function sharpening_right_dia_Callback(hObject, eventdata, handles)
global x
A=sharpening_right_dia(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in Ideal.
function Ideal_Callback(hObject, eventdata, handles)
global x
A=ideal_filter(x);
x=A;
axes(handles.axes2);
imshow(x)


% --- Executes on button press in Ideal_high.
function Ideal_high_Callback(hObject, eventdata, handles)
global x
A=ideal_filter(x);
x=A;
axes(handles.axes2);
imshow(x)


function Butterworth_Callback(hObject, eventdata, handles)
global x
A=butterworth_filter(x);
x=A;
axes(handles.axes2);
imshow(x)

% --- Executes on button press in Gaussian_low.



function Gaussian_Callback(hObject, eventdata, handles)
global x
A=gaussian_filter(x);
x=A;
axes(handles.axes2);
imshow(x)
