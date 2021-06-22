function xMat = AdaGrad(sg, x0, nIter, idxSG, stepSize, epsilon)

if nargin == 5
    epsilon = sqrt(eps);
end

nDecVar = length(x0);

xMat = zeros(nDecVar, nIter + 1);


xMat(:, 1) = x0;

if size(idxSG, 2) < nIter
    idxSG = repmat(idxSG, 1, ceil(nIter/size(idxSG, 2)));
    idxSG(:, nIter + 1 : 1 : end) = [];
end


for i = 1 : 1 : nIter

    xMat(:, i + 1) = xMat(:, i) - ...
        stepSize.*sgCurr./(sqrt(sgHist) + epsilon);
end

end
