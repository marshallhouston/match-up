class ScoreCalculatorService

  def self.score(gpa, sat_score)
    SCORE_CONSTANT[format_gpa(gpa)][sat_range(sat_score)]
  end

  private

    def self.format_gpa(gpa)
      gpa < 1.3 ? gpa = 1.3 : gpa
    end

    def self.sat_range(sat_score)
      case sat_score
      when 0..530
        :range_1
      when 540..610
        :range_2
      when 620..700
        :range_3
      when 710..770
        :range_4
      when 780..830
        :range_5
      when 840..870
        :range_6
      when 880..910
        :range_7
      when 920..950
        :range_8
      when 960..1000
        :range_9
      when 1010..1040
        :range_10
      when 1050..1080
        :range_11
      when 1090..1120
        :range_12
      when 1130..1140
        :range_13
      when 1150..1180
        :range_14
      when 1190..1220
        :range_15
      when 1230..1260
        :range_16
      when 1270..1300
        :range_17
      when 1310..1330
        :range_18
      when 1340..1360
        :range_19
      when 1370..1400
        :range_20
      when 1410..1440
        :range_21
      when 1450..1470
        :range_22
      when 1480..1510
        :range_23
      when 1520..1550
        :range_24
      when 1560..1590
        :range_25
      when 1600
        :range_26
      end
    end

    SCORE_CONSTANT = {
      1.3 => { range_1: 45, range_2: 47, range_3: 49, range_4: 51, range_5: 53, range_6: 55, range_7: 57, range_8: 59, range_9: 61, range_10: 63, range_11: 65, range_12: 68, range_13: 70, range_14: 72, range_15: 74, range_16: 76, range_17: 78, range_18: 80, range_19: 82, range_20: 84, range_21: 86, range_22: 88, range_23: 90, range_24: 93, range_25: 95, range_26: 97},
      1.4 => { range_1: 49, range_2: 51, range_3: 53, range_4: 55, range_5: 57, range_6: 59, range_7: 61, range_8: 63, range_9: 65, range_10: 67, range_11: 69, range_12: 72, range_13: 74, range_14: 76, range_15: 78, range_16: 80, range_17: 82, range_18: 84, range_19: 86, range_20: 88, range_21: 90, range_22: 92, range_23: 94, range_24: 97, range_25: 99, range_26: 101},
      1.5 => { range_1: 49, range_2: 51, range_3: 53, range_4: 55, range_5: 57, range_6: 59, range_7: 61, range_8: 63, range_9: 65, range_10: 67, range_11: 69, range_12: 72, range_13: 74, range_14: 76, range_15: 78, range_16: 80, range_17: 82, range_18: 84, range_19: 86, range_20: 88, range_21: 90, range_22: 92, range_23: 94, range_24: 97, range_25: 99, range_26: 101},
      1.6 => { range_1: 51, range_2: 53, range_3: 55, range_4: 57, range_5: 59, range_6: 61, range_7: 63, range_8: 65, range_9: 67, range_10: 69, range_11: 71, range_12: 74, range_13: 76, range_14: 78, range_15: 80, range_16: 82, range_17: 84, range_18: 86, range_19: 88, range_20: 90, range_21: 92, range_22: 94, range_23: 96, range_24: 99, range_25: 101, range_26: 103},
      1.7 => { range_1: 52, range_2: 54, range_3: 56, range_4: 58, range_5: 60, range_6: 62, range_7: 64, range_8: 66, range_9: 68, range_10: 70, range_11: 72, range_12: 75, range_13: 77, range_14: 79, range_15: 81, range_16: 83, range_17: 85, range_18: 87, range_19: 89, range_20: 91, range_21: 93, range_22: 95, range_23: 97, range_24: 100, range_25: 102, range_26: 104},
      1.8 => { range_1: 54, range_2: 56, range_3: 58, range_4: 60, range_5: 62, range_6: 64, range_7: 66, range_8: 68, range_9: 70, range_10: 72, range_11: 74, range_12: 77, range_13: 79, range_14: 81, range_15: 83, range_16: 85, range_17: 87, range_18: 89, range_19: 91, range_20: 93, range_21: 95, range_22: 97, range_23: 99, range_24: 102, range_25: 104, range_26: 106},
      1.9 => { range_1: 56, range_2: 58, range_3: 60, range_4: 62, range_5: 64, range_6: 66, range_7: 68, range_8: 70, range_9: 72, range_10: 74, range_11: 76, range_12: 79, range_13: 81, range_14: 83, range_15: 85, range_16: 87, range_17: 89, range_18: 91, range_19: 93, range_20: 95, range_21: 97, range_22: 99, range_23: 101, range_24: 104, range_25: 106, range_26: 108},
      2.0 => { range_1: 58, range_2: 60, range_3: 62, range_4: 64, range_5: 66, range_6: 68, range_7: 70, range_8: 72, range_9: 74, range_10: 76, range_11: 78, range_12: 81, range_13: 83, range_14: 85, range_15: 87, range_16: 89, range_17: 91, range_18: 93, range_19: 95, range_20: 97, range_21: 99, range_22: 101, range_23: 103, range_24: 106, range_25: 108, range_26: 110},
      2.1 => { range_1: 60, range_2: 62, range_3: 64, range_4: 66, range_5: 68, range_6: 70, range_7: 72, range_8: 74, range_9: 76, range_10: 78, range_11: 80, range_12: 83, range_13: 85, range_14: 87, range_15: 89, range_16: 91, range_17: 93, range_18: 95, range_19: 97, range_20: 99, range_21: 101, range_22: 103, range_23: 105, range_24: 108, range_25: 110, range_26: 112},
      2.2 => { range_1: 61, range_2: 63, range_3: 65, range_4: 67, range_5: 69, range_6: 71, range_7: 73, range_8: 75, range_9: 77, range_10: 79, range_11: 81, range_12: 84, range_13: 86, range_14: 88, range_15: 90, range_16: 92, range_17: 94, range_18: 96, range_19: 98, range_20: 100, range_21: 102, range_22: 104, range_23: 106, range_24: 109, range_25: 111, range_26: 113},
      2.3 => { range_1: 63, range_2: 65, range_3: 67, range_4: 69, range_5: 71, range_6: 73, range_7: 75, range_8: 77, range_9: 79, range_10: 81, range_11: 83, range_12: 86, range_13: 88, range_14: 90, range_15: 92, range_16: 94, range_17: 96, range_18: 98, range_19: 100, range_20: 102, range_21: 104, range_22: 106, range_23: 108, range_24: 111, range_25: 113, range_26: 115},
      2.4 => { range_1: 65, range_2: 67, range_3: 69, range_4: 71, range_5: 73, range_6: 75, range_7: 77, range_8: 79, range_9: 81, range_10: 83, range_11: 85, range_12: 88, range_13: 90, range_14: 92, range_15: 94, range_16: 96, range_17: 98, range_18: 100, range_19: 102, range_20: 104, range_21: 106, range_22: 108, range_23: 110, range_24: 113, range_25: 115, range_26: 117},
      2.5 => { range_1: 67, range_2: 69, range_3: 71, range_4: 73, range_5: 75, range_6: 77, range_7: 79, range_8: 81, range_9: 83, range_10: 85, range_11: 87, range_12: 89, range_13: 92, range_14: 94, range_15: 96, range_16: 98, range_17: 100, range_18: 102, range_19: 104, range_20: 106, range_21: 108, range_22: 110, range_23: 112, range_24: 115, range_25: 117, range_26: 119},
      2.6 => { range_1: 69, range_2: 71, range_3: 73, range_4: 75, range_5: 77, range_6: 79, range_7: 81, range_8: 83, range_9: 85, range_10: 87, range_11: 89, range_12: 92, range_13: 94, range_14: 96, range_15: 98, range_16: 100, range_17: 102, range_18: 104, range_19: 106, range_20: 108, range_21: 110, range_22: 112, range_23: 114, range_24: 117, range_25: 119, range_26: 121},
      2.7 => { range_1: 70, range_2: 72, range_3: 74, range_4: 76, range_5: 78, range_6: 80, range_7: 82, range_8: 84, range_9: 86, range_10: 88, range_11: 90, range_12: 93, range_13: 95, range_14: 97, range_15: 99, range_16: 101, range_17: 103, range_18: 105, range_19: 107, range_20: 109, range_21: 111, range_22: 113, range_23: 115, range_24: 118, range_25: 120, range_26: 122},
      2.8 => { range_1: 72, range_2: 74, range_3: 76, range_4: 78, range_5: 80, range_6: 82, range_7: 84, range_8: 86, range_9: 88, range_10: 90, range_11: 92, range_12: 95, range_13: 97, range_14: 99, range_15: 101, range_16: 103, range_17: 105, range_18: 107, range_19: 109, range_20: 111, range_21: 113, range_22: 115, range_23: 117, range_24: 120, range_25: 122, range_26: 124},
      2.9 => { range_1: 74, range_2: 76, range_3: 78, range_4: 80, range_5: 82, range_6: 84, range_7: 86, range_8: 88, range_9: 90, range_10: 92, range_11: 94, range_12: 97, range_13: 99, range_14: 101, range_15: 103, range_16: 105, range_17: 107, range_18: 109, range_19: 111, range_20: 113, range_21: 115, range_22: 117, range_23: 119, range_24: 122, range_25: 124, range_26: 126},
      3.0 => { range_1: 76, range_2: 78, range_3: 80, range_4: 82, range_5: 84, range_6: 86, range_7: 88, range_8: 90, range_9: 92, range_10: 94, range_11: 96, range_12: 99, range_13: 101, range_14: 103, range_15: 105, range_16: 107, range_17: 109, range_18: 111, range_19: 113, range_20: 115, range_21: 117, range_22: 119, range_23: 121, range_24: 124, range_25: 126, range_26: 128},
      3.1 => { range_1: 78, range_2: 80, range_3: 82, range_4: 84, range_5: 86, range_6: 88, range_7: 90, range_8: 92, range_9: 94, range_10: 96, range_11: 98, range_12: 101, range_13: 103, range_14: 105, range_15: 107, range_16: 109, range_17: 111, range_18: 113, range_19: 115, range_20: 117, range_21: 119, range_22: 121, range_23: 123, range_24: 126, range_25: 128, range_26: 131},
      3.2 => { range_1: 79, range_2: 81, range_3: 83, range_4: 85, range_5: 87, range_6: 89, range_7: 91, range_8: 93, range_9: 95, range_10: 97, range_11: 99, range_12: 102, range_13: 104, range_14: 106, range_15: 108, range_16: 110, range_17: 112, range_18: 114, range_19: 116, range_20: 118, range_21: 120, range_22: 122, range_23: 124, range_24: 127, range_25: 129, range_26: 131},
      3.3 => { range_1: 81, range_2: 83, range_3: 85, range_4: 87, range_5: 89, range_6: 91, range_7: 93, range_8: 95, range_9: 97, range_10: 99, range_11: 101, range_12: 104, range_13: 106, range_14: 108, range_15: 110, range_16: 112, range_17: 114, range_18: 116, range_19: 118, range_20: 120, range_21: 122, range_22: 124, range_23: 126, range_24: 129, range_25: 131, range_26: 133},
      3.4 => { range_1: 83, range_2: 85, range_3: 87, range_4: 89, range_5: 91, range_6: 93, range_7: 95, range_8: 97, range_9: 99, range_10: 101, range_11: 103, range_12: 106, range_13: 108, range_14: 110, range_15: 112, range_16: 114, range_17: 116, range_18: 118, range_19: 120, range_20: 122, range_21: 124, range_22: 126, range_23: 128, range_24: 131, range_25: 133, range_26: 135},
      3.5 => { range_1: 85, range_2: 87, range_3: 89, range_4: 91, range_5: 93, range_6: 95, range_7: 97, range_8: 99, range_9: 101, range_10: 103, range_11: 105, range_12: 108, range_13: 110, range_14: 112, range_15: 114, range_16: 116, range_17: 118, range_18: 120, range_19: 122, range_20: 124, range_21: 126, range_22: 128, range_23: 130, range_24: 133, range_25: 135, range_26: 137},
      3.6 => { range_1: 87, range_2: 89, range_3: 91, range_4: 93, range_5: 95, range_6: 97, range_7: 99, range_8: 101, range_9: 103, range_10: 105, range_11: 107, range_12: 110, range_13: 112, range_14: 114, range_15: 116, range_16: 118, range_17: 120, range_18: 122, range_19: 124, range_20: 126, range_21: 128, range_22: 130, range_23: 132, range_24: 135, range_25: 137, range_26: 139},
      3.7 => { range_1: 88, range_2: 90, range_3: 92, range_4: 94, range_5: 96, range_6: 98, range_7: 100, range_8: 102, range_9: 104, range_10: 106, range_11: 108, range_12: 111, range_13: 113, range_14: 115, range_15: 117, range_16: 119, range_17: 121, range_18: 123, range_19: 125, range_20: 127, range_21: 129, range_22: 131, range_23: 133, range_24: 136, range_25: 138, range_26: 140},
      3.8 => { range_1: 90, range_2: 92, range_3: 94, range_4: 96, range_5: 98, range_6: 100, range_7: 102, range_8: 104, range_9: 106, range_10: 108, range_11: 110, range_12: 113, range_13: 115, range_14: 117, range_15: 119, range_16: 121, range_17: 123, range_18: 125, range_19: 127, range_20: 129, range_21: 131, range_22: 133, range_23: 135, range_24: 138, range_25: 140, range_26: 142},
      3.9 => { range_1: 92, range_2: 94, range_3: 96, range_4: 98, range_5: 100, range_6: 102, range_7: 104, range_8: 106, range_9: 108, range_10: 110, range_11: 112, range_12: 115, range_13: 117, range_14: 119, range_15: 121, range_16: 123, range_17: 125, range_18: 127, range_19: 129, range_20: 131, range_21: 133, range_22: 135, range_23: 137, range_24: 140, range_25: 142, range_26: 144},
      4.0 => { range_1: 94, range_2: 96, range_3: 98, range_4: 100, range_5: 102, range_6: 104, range_7: 106, range_8: 108, range_9: 110, range_10: 112, range_11: 114, range_12: 117, range_13: 119, range_14: 121, range_15: 123, range_16: 125, range_17: 127, range_18: 129, range_19: 131, range_20: 133, range_21: 135, range_22: 137, range_23: 139, range_24: 142, range_25: 144, range_26: 146}
    }

end
