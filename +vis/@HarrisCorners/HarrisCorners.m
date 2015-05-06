classdef HarrisCorners < vis.FeatureDetector
   methods
        function obj = HarrisCorners(im,num,margin)
            obj@vis.FeatureDetector(im,num,margin);
        end
        
        function corners = detect(obj)
            corners = corner(obj.im,obj.num)';
            valid = obj.enforce_margin(corners);
            obj.corners = corners(:,valid);
        end
    end    
end