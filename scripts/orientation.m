FrameDur=3300;
nrX=32;
s = readspikes('V4o.dat',FrameDur);

if ~isequal(size(s),[4,nrX*nrX*4]), s(4,nrX*nrX*4) = 0; end

figure, imagesc(reshape(permute(reshape(s(1:4,:),[4 nrX nrX 4]),[2 1 3 4]),[4*nrX 4*nrX]));
