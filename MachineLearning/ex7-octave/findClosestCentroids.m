function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X,1)
    % Get the current example
    x = X(i,:);
    % Initialize the minimum distance to a large value
    min_dist = inf;
    % Loop over all centroids
    for centroid = 1:K
        % Get the current centroid
        c = centroids(centroid,:);
        % Compute the distance between the current example and the current centroid
        dist = sum((x - c).^2);
        % If the distance is smaller than the minimum distance, update the minimum distance
        if (dist < min_dist)
            min_dist = dist;
            idx(i) = centroid;
        endif
    endfor
endfor



% =============================================================

end

