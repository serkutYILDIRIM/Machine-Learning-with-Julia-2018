using Plots
clearconsole()
cd(Base.source_dir())
data = readdlm("data.txt")
datap = ones(data)
dataSize = sizeof(data);
d0_batch = ceil(data[0] / dataSize)
d1_batch = ceil(data[1] / dataSize)

testt = ceil(data);


for d0_i in range(d0_batch):
    for d1_i in range(d1_batch):
        img_batch = data[d0_i*dataSize: (d0_i + 1)*dataSize,
                             d1_i*dataSize: (d1_i + 1)*dataSize]

        if dataSize == dataSize*dataSize:
            img_batch = data.array(img_batch.reshape(1,dataSize)

            img_batch_p = autoencoder.predict(img_batch)
            img_batch_p = img_batch_p.reshape((dataSize,dataSize))

            testt[d0_i*dataSize: (d0_i + 1)*dataSize,
                       d1_i*img_batch_size:(d1_i + 1)*dataSize] = img_batch_p

img_batch = d0_batch = d1_batch = d0_i = d1_i = 0


p = plot(data,seriestype=:scatter,title="Data")
display(p)
