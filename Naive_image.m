
O1 = NaiveBayes.fit(data, labels , 'Distribution', 'mn');
%O1 = NaiveBayes.fit(data,labels);
C1 = O1.predict(data);
cMat1 = confusionmat(labels,C1)

for i = 1 : 224
for j = 1 : 224
result = O1.predict( [ double(apple(i,j,1))   double(apple(i,j,2))  double(apple(i,j,3)) ] ) ;

if result == 1
app (i , j , 1) = 255;
app (i , j , 2) = 1;
app (i , j , 3) = 1;
end



if result == 2
app (i , j , 1) = 1;
app (i , j , 2) = 255;
app (i , j , 3) = 1;
end

if result == 3
app (i , j , 1) = 255;
app (i , j , 2) = 255;
app (i , j , 3) = 255;
end


app = uint8(app);
image (app)


end
end
