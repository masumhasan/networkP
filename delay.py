import traceanalyzer as tr
# end-to-end delay
eedelay1 = tr.Eedelay('a.tr', '33')
eedelay2 = tr.Eedelay('b.tr', '33')
eedelay2.sample()  # eedelay2.sample(1.5) for sampling with step=1.5
eedelay1.plot()
eedelay2.plot()
# getting data
time = eedelay2.time_sample
eedelay = eedelay2.eedelay_sample
idx = 0
for instant in time:
    print(instant, ' ', eedelay[idx])
    idx += 1
