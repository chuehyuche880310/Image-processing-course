classdef app_new_new_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure         matlab.ui.Figure
        Menu             matlab.ui.container.Menu
        Menu_2           matlab.ui.container.Menu
        Menu_4           matlab.ui.container.Menu
        Menu_3           matlab.ui.container.Menu
        GridLayout       matlab.ui.container.GridLayout
        Image            matlab.ui.control.Image
        TabGroup         matlab.ui.container.TabGroup
        Tab              matlab.ui.container.Tab
        Knob             matlab.ui.control.Knob
        Label            matlab.ui.control.Label
        Label_2          matlab.ui.control.Label
        Slider           matlab.ui.control.Slider
        Tab_2            matlab.ui.container.Tab
        RSliderLabel     matlab.ui.control.Label
        RSlider          matlab.ui.control.Slider
        GSliderLabel     matlab.ui.control.Label
        GSlider          matlab.ui.control.Slider
        BSliderLabel     matlab.ui.control.Label
        BSlider          matlab.ui.control.Slider
        resolution_view  matlab.ui.control.Label
        Label_3          matlab.ui.control.Label
    end

    
    properties (Access = public)
       
       img_location;
       file;
       path;
       img_imread
       imgapplied;
       imgresult;
      
   
      
    end
    
    methods (Access = public)
        
        function results = UI_Update(app)
        
            
            apply_all_filter(app); %% ÿÿÿÿÿÿÿfilter
            
            
            org_resolution=size(app.img_imread);%ÿÿÿÿÿÿÿ
            changed_resolution=size(app.imgresult);%ÿÿÿÿÿÿÿÿ
            app.resolution_view.Text=["ÿÿÿÿÿ:("+org_resolution(2)+"x"+org_resolution(1)+") ÿÿÿÿÿÿ:("+changed_resolution(2)+"x"+changed_resolution(1)+")"];
           
        end
    end
    
    
    methods (Access = public)
        %=======================ÿÿÿÿ==========================
        function results = apply_all_filter(app)
        app.Label_3.Text="ÿÿÿÿ....";
        value = app.Knob.Value;
              theta=pi*(value/180);
             T= [cos(theta), -sin(theta), 0;
                sin(theta), cos(theta), 0;
                  0, 0, 1];
            x_min = 0;
            y_min = 0;

            for i = 1:size(app.imgapplied,1)
                for j = 1:size(app.imgapplied,2)
                    NewLocation = [i, j, 1]*T;
                    x = round(NewLocation(1));
                    y = round(NewLocation(2));                 
                     if x < x_min
                             x_min = x;
                    end
                             if y < y_min
                              y_min = y;
                     end
                end
            end
          
             for i = 1:size(app.imgapplied,1)
                for j = 1:size(app.imgapplied,2)
                    NewLocation = [i, j ,1]*T;
                    x = round(NewLocation(1));
                    y = round(NewLocation(2));
                    f_changed(x+abs(x_min)+1,y+abs(y_min)+1,:) = app.imgapplied(i,j,:);
                end
             end
             
           %=======================ÿÿÿÿ==========================
            f_changed = imresize(f_changed,app.Slider.Value);
            
            
           %=======================ÿÿRGB========================== 
            f_changed(:,:,1)=f_changed(:,:,1).*(app.RSlider.Value/256);
            f_changed(:,:,2)=f_changed(:,:,2).*(app.GSlider.Value/256);
            f_changed(:,:,3)=f_changed(:,:,3).*(app.BSlider.Value/256);
            
            
          %=======================ÿÿÿÿÿÿ==========================
            app.Image.ImageSource = uint8(f_changed);
            app.imgresult=f_changed;  %ÿÿÿ
             app.Label_3.Text="";
        end
    end
    
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: Knob
        function Value_chg(app, event)
                
                UI_Update(app);   
            
        end

        % Menu selected function: Menu_2
        function openFile(app, event)
            [file,path] = uigetfile({'*.*'},...
                          'ÿÿÿÿ');
                      a=[path file];
             app.img_location=a;
            app.img_imread=imread(app.img_location);
            app.Image.ImageSource = app.img_imread;
            app.imgapplied=double(app.img_imread);
            UI_Update(app);
        end

        % Value changed function: Slider
        function slider_changed(app, event)

            UI_Update(app);
        end

        % Value changed function: RSlider
        function R_slider(app, event)
            
            UI_Update(app);   
        end

        % Value changed function: GSlider
        function G_slider(app, event)
            
            UI_Update(app);   
        end

        % Value changed function: BSlider
        function B_slider(app, event)
            
            UI_Update(app);   
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 898 688];
            app.UIFigure.Name = 'UI Figure';

            % Create Menu
            app.Menu = uimenu(app.UIFigure);
            app.Menu.Text = 'ÿÿ';

            % Create Menu_2
            app.Menu_2 = uimenu(app.Menu);
            app.Menu_2.MenuSelectedFcn = createCallbackFcn(app, @openFile, true);
            app.Menu_2.Text = 'ÿÿ';

            % Create Menu_4
            app.Menu_4 = uimenu(app.Menu);
            app.Menu_4.Text = 'ÿÿÿÿ';

            % Create Menu_3
            app.Menu_3 = uimenu(app.Menu);
            app.Menu_3.Text = ' ÿÿ';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {'1x', '40x', '1x', 150};
            app.GridLayout.RowHeight = {'1x', '25x', '1x'};
            app.GridLayout.RowSpacing = 7.2;
            app.GridLayout.Padding = [10 7.2 10 7.2];

            % Create Image
            app.Image = uiimage(app.GridLayout);
            app.Image.Layout.Row = 2;
            app.Image.Layout.Column = 2;

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GridLayout);
            app.TabGroup.Layout.Row = 2;
            app.TabGroup.Layout.Column = [3 4];

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = 'ÿÿÿÿ';

            % Create Knob
            app.Knob = uiknob(app.Tab, 'continuous');
            app.Knob.Limits = [0 360];
            app.Knob.MajorTicks = [0 60 120 180 240 300 360];
            app.Knob.ValueChangedFcn = createCallbackFcn(app, @Value_chg, true);
            app.Knob.Position = [42 443 94 94];

            % Create Label
            app.Label = uilabel(app.Tab);
            app.Label.Position = [77 398 42 22];
            app.Label.Text = 'ÿÿ';

            % Create Label_2
            app.Label_2 = uilabel(app.Tab);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.Position = [33 330 29 22];
            app.Label_2.Text = 'ÿÿ';

            % Create Slider
            app.Slider = uislider(app.Tab);
            app.Slider.Limits = [0.1 10];
            app.Slider.Orientation = 'vertical';
            app.Slider.ValueChangedFcn = createCallbackFcn(app, @slider_changed, true);
            app.Slider.Position = [95 125 3 196];
            app.Slider.Value = 1;

            % Create Tab_2
            app.Tab_2 = uitab(app.TabGroup);
            app.Tab_2.Title = 'ÿÿ';

            % Create RSliderLabel
            app.RSliderLabel = uilabel(app.Tab_2);
            app.RSliderLabel.HorizontalAlignment = 'right';
            app.RSliderLabel.Position = [16 551 25 22];
            app.RSliderLabel.Text = 'R';

            % Create RSlider
            app.RSlider = uislider(app.Tab_2);
            app.RSlider.Limits = [0 256];
            app.RSlider.ValueChangedFcn = createCallbackFcn(app, @R_slider, true);
            app.RSlider.Position = [62 560 99 3];
            app.RSlider.Value = 256;

            % Create GSliderLabel
            app.GSliderLabel = uilabel(app.Tab_2);
            app.GSliderLabel.HorizontalAlignment = 'right';
            app.GSliderLabel.Position = [-1 501 42 22];
            app.GSliderLabel.Text = 'G';

            % Create GSlider
            app.GSlider = uislider(app.Tab_2);
            app.GSlider.Limits = [0 256];
            app.GSlider.ValueChangedFcn = createCallbackFcn(app, @G_slider, true);
            app.GSlider.Position = [62 510 99 3];
            app.GSlider.Value = 256;

            % Create BSliderLabel
            app.BSliderLabel = uilabel(app.Tab_2);
            app.BSliderLabel.HorizontalAlignment = 'right';
            app.BSliderLabel.Position = [-2 457 42 22];
            app.BSliderLabel.Text = 'B';

            % Create BSlider
            app.BSlider = uislider(app.Tab_2);
            app.BSlider.Limits = [0 256];
            app.BSlider.ValueChangedFcn = createCallbackFcn(app, @B_slider, true);
            app.BSlider.Position = [61 466 100 3];
            app.BSlider.Value = 256;

            % Create resolution_view
            app.resolution_view = uilabel(app.GridLayout);
            app.resolution_view.Layout.Row = 3;
            app.resolution_view.Layout.Column = 2;
            app.resolution_view.Text = 'ÿÿÿÿÿ:(0x0),ÿÿÿÿÿÿ:(0x0)';

            % Create Label_3
            app.Label_3 = uilabel(app.GridLayout);
            app.Label_3.Layout.Row = 3;
            app.Label_3.Layout.Column = 4;
            app.Label_3.Text = '';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app_new_new_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end