function varargout = projekt_main(varargin)
% PROJEKT_MAIN MATLAB code for projekt_main.fig
%      PROJEKT_MAIN, by itself, creates a new PROJEKT_MAIN or raises the existing
%      singleton*.
%
%      H = PROJEKT_MAIN returns the handle to a new PROJEKT_MAIN or the handle to
%      the existing singleton*.
%
%      PROJEKT_MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEKT_MAIN.M with the given input arguments.
%
%      PROJEKT_MAIN('Property','Value',...) creates a new PROJEKT_MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projekt_main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projekt_main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projekt_main

% Last Modified by GUIDE v2.5 30-Dec-2015 15:57:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projekt_main_OpeningFcn, ...
                   'gui_OutputFcn',  @projekt_main_OutputFcn, ...
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


% --- Executes just before projekt_main is made visible.
function projekt_main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projekt_main (see VARARGIN)

% Choose default command line output for projekt_main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projekt_main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projekt_main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Wczytaj.
function Wczytaj_Callback(hObject, eventdata, handles)
% hObject    handle to Wczytaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
projekt_wczytaj;
close(projekt_main);

% --- Executes on button press in Wpisz.
function Wpisz_Callback(hObject, eventdata, handles)
% hObject    handle to Wpisz (see GCBO)

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%errordlg('Ok the call back is linked');
projekt_wpisz;
