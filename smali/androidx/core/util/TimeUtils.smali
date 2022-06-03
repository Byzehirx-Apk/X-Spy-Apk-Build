.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 41
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/TimeUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 6

    .prologue
    .line 44
    move v0, p0

    .local v0, "amt":I
    move v1, p1

    .local v1, "suffix":I
    move v2, p2

    .local v2, "always":Z
    move v3, p3

    .local v3, "zeropad":I
    move v4, v0

    const/16 v5, 0x63

    if-gt v4, v5, :cond_0

    move v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 45
    :cond_0
    const/4 v4, 0x3

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    .line 53
    .end local v0    # "amt":I
    :goto_0
    return v0

    .line 47
    .restart local v0    # "amt":I
    :cond_1
    move v4, v0

    const/16 v5, 0x9

    if-gt v4, v5, :cond_2

    move v4, v2

    if-eqz v4, :cond_3

    move v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 48
    :cond_2
    const/4 v4, 0x2

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 50
    :cond_3
    move v4, v2

    if-nez v4, :cond_4

    move v4, v0

    if-lez v4, :cond_5

    .line 51
    :cond_4
    const/4 v4, 0x1

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 53
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 178
    move-wide v1, p0

    .local v1, "time":J
    move-wide v3, p2

    .local v3, "now":J
    move-object v5, p4

    .local v5, "pw":Ljava/io/PrintWriter;
    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 179
    move-object v6, v5

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    move-wide v6, v1

    move-wide v8, v3

    sub-long/2addr v6, v8

    move-object v8, v5

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 183
    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 172
    move-wide v0, p0

    .local v0, "duration":J
    move-object v2, p2

    .local v2, "pw":Ljava/io/PrintWriter;
    move-wide v3, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 173
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 14
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 163
    move-wide v0, p0

    .local v0, "duration":J
    move-object/from16 v2, p2

    .local v2, "pw":Ljava/io/PrintWriter;
    move/from16 v3, p3

    .local v3, "fieldLen":I
    sget-object v7, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    monitor-enter v7

    .line 164
    move-wide v7, v0

    move v9, v3

    :try_start_0
    invoke-static {v7, v8, v9}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v7

    move v5, v7

    .line 165
    .local v5, "len":I
    move-object v7, v2

    new-instance v8, Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    sget-object v10, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v11, 0x0

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    move-object v7, v4

    monitor-exit v7

    .line 167
    return-void

    .line 166
    .end local v5    # "len":I
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 12
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 154
    move-wide v0, p0

    .local v0, "duration":J
    move-object v2, p2

    .local v2, "builder":Ljava/lang/StringBuilder;
    sget-object v6, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 155
    move-wide v6, v0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v7, v8}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v6

    move v4, v6

    .line 156
    .local v4, "len":I
    move-object v6, v2

    sget-object v7, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    move-object v6, v3

    monitor-exit v6

    .line 158
    return-void

    .line 157
    .end local v4    # "len":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private static formatDurationLocked(JI)I
    .locals 24

    .prologue
    .line 81
    move-wide/from16 v3, p0

    .local v3, "duration":J
    move/from16 v5, p2

    .local v5, "fieldLen":I
    sget-object v16, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 82
    move/from16 v16, v5

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v16, v0

    sput-object v16, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    .line 85
    :cond_0
    sget-object v16, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    move-object/from16 v6, v16

    .line 87
    .local v6, "formatStr":[C
    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_2

    .line 88
    const/16 v16, 0x0

    move/from16 v7, v16

    .line 89
    .local v7, "pos":I
    add-int/lit8 v5, v5, -0x1

    .line 90
    :goto_0
    move/from16 v16, v7

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 91
    move-object/from16 v16, v6

    move/from16 v17, v7

    const/16 v18, 0x20

    aput-char v18, v16, v17

    goto :goto_0

    .line 93
    :cond_1
    move-object/from16 v16, v6

    move/from16 v17, v7

    const/16 v18, 0x30

    aput-char v18, v16, v17

    .line 94
    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v3, v16

    .line 148
    .end local v3    # "duration":J
    .end local v7    # "pos":I
    :goto_1
    return v3

    .line 98
    .restart local v3    # "duration":J
    :cond_2
    move-wide/from16 v16, v3

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_6

    .line 99
    const/16 v16, 0x2b

    move/from16 v7, v16

    .line 105
    .local v7, "prefix":C
    :goto_2
    move-wide/from16 v16, v3

    const-wide/16 v18, 0x3e8

    rem-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v8, v16

    .line 106
    .local v8, "millis":I
    move-wide/from16 v16, v3

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v9, v16

    .line 107
    .local v9, "seconds":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "days":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "hours":I
    const/16 v16, 0x0

    move/from16 v12, v16

    .line 109
    .local v12, "minutes":I
    move/from16 v16, v9

    const v17, 0x15180

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 110
    move/from16 v16, v9

    const v17, 0x15180

    div-int v16, v16, v17

    move/from16 v10, v16

    .line 111
    move/from16 v16, v9

    move/from16 v17, v10

    const v18, 0x15180

    mul-int v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 113
    :cond_3
    move/from16 v16, v9

    const/16 v17, 0xe10

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 114
    move/from16 v16, v9

    const/16 v17, 0xe10

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0xe10

    move/from16 v16, v0

    move/from16 v11, v16

    .line 115
    move/from16 v16, v9

    move/from16 v17, v11

    const/16 v18, 0xe10

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 117
    :cond_4
    move/from16 v16, v9

    const/16 v17, 0x3c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 118
    move/from16 v16, v9

    const/16 v17, 0x3c

    div-int/lit8 v16, v16, 0x3c

    move/from16 v12, v16

    .line 119
    move/from16 v16, v9

    move/from16 v17, v12

    const/16 v18, 0x3c

    mul-int/lit8 v17, v17, 0x3c

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 122
    :cond_5
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 124
    .local v13, "pos":I
    move/from16 v16, v5

    if-eqz v16, :cond_b

    .line 125
    move/from16 v16, v10

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v16

    move/from16 v14, v16

    .line 126
    .local v14, "myLen":I
    move/from16 v16, v14

    move/from16 v17, v11

    const/16 v18, 0x1

    move/from16 v19, v14

    if-lez v19, :cond_7

    const/16 v19, 0x1

    :goto_3
    const/16 v20, 0x2

    invoke-static/range {v17 .. v20}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v17

    add-int v16, v16, v17

    move/from16 v14, v16

    .line 127
    move/from16 v16, v14

    move/from16 v17, v12

    const/16 v18, 0x1

    move/from16 v19, v14

    if-lez v19, :cond_8

    const/16 v19, 0x1

    :goto_4
    const/16 v20, 0x2

    invoke-static/range {v17 .. v20}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v17

    add-int v16, v16, v17

    move/from16 v14, v16

    .line 128
    move/from16 v16, v14

    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v19, v14

    if-lez v19, :cond_9

    const/16 v19, 0x1

    :goto_5
    const/16 v20, 0x2

    invoke-static/range {v17 .. v20}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v17

    add-int v16, v16, v17

    move/from16 v14, v16

    .line 129
    move/from16 v16, v14

    move/from16 v17, v8

    const/16 v18, 0x2

    const/16 v19, 0x1

    move/from16 v20, v14

    if-lez v20, :cond_a

    const/16 v20, 0x3

    :goto_6
    invoke-static/range {v17 .. v20}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int v16, v16, v17

    move/from16 v14, v16

    .line 130
    :goto_7
    move/from16 v16, v14

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 131
    move-object/from16 v16, v6

    move/from16 v17, v13

    const/16 v18, 0x20

    aput-char v18, v16, v17

    .line 132
    add-int/lit8 v13, v13, 0x1

    .line 133
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 101
    .end local v7    # "prefix":C
    .end local v8    # "millis":I
    .end local v9    # "seconds":I
    .end local v10    # "days":I
    .end local v11    # "hours":I
    .end local v12    # "minutes":I
    .end local v13    # "pos":I
    .end local v14    # "myLen":I
    :cond_6
    const/16 v16, 0x2d

    move/from16 v7, v16

    .line 102
    .restart local v7    # "prefix":C
    move-wide/from16 v16, v3

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v3, v16

    goto/16 :goto_2

    .line 126
    .restart local v8    # "millis":I
    .restart local v9    # "seconds":I
    .restart local v10    # "days":I
    .restart local v11    # "hours":I
    .restart local v12    # "minutes":I
    .restart local v13    # "pos":I
    .restart local v14    # "myLen":I
    :cond_7
    const/16 v19, 0x0

    goto :goto_3

    .line 127
    :cond_8
    const/16 v19, 0x0

    goto :goto_4

    .line 128
    :cond_9
    const/16 v19, 0x0

    goto :goto_5

    .line 129
    :cond_a
    const/16 v20, 0x0

    goto :goto_6

    .line 137
    .end local v14    # "myLen":I
    :cond_b
    move-object/from16 v16, v6

    move/from16 v17, v13

    move/from16 v18, v7

    aput-char v18, v16, v17

    .line 138
    add-int/lit8 v13, v13, 0x1

    .line 140
    move/from16 v16, v13

    move/from16 v14, v16

    .line 141
    .local v14, "start":I
    move/from16 v16, v5

    if-eqz v16, :cond_c

    const/16 v16, 0x1

    :goto_8
    move/from16 v15, v16

    .line 142
    .local v15, "zeropad":Z
    move-object/from16 v16, v6

    move/from16 v17, v10

    const/16 v18, 0x64

    move/from16 v19, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v16

    move/from16 v13, v16

    .line 143
    move-object/from16 v16, v6

    move/from16 v17, v11

    const/16 v18, 0x68

    move/from16 v19, v13

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    const/16 v20, 0x1

    :goto_9
    move/from16 v21, v15

    if-eqz v21, :cond_e

    const/16 v21, 0x2

    :goto_a
    invoke-static/range {v16 .. v21}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v16

    move/from16 v13, v16

    .line 144
    move-object/from16 v16, v6

    move/from16 v17, v12

    const/16 v18, 0x6d

    move/from16 v19, v13

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    const/16 v20, 0x1

    :goto_b
    move/from16 v21, v15

    if-eqz v21, :cond_10

    const/16 v21, 0x2

    :goto_c
    invoke-static/range {v16 .. v21}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v16

    move/from16 v13, v16

    .line 145
    move-object/from16 v16, v6

    move/from16 v17, v9

    const/16 v18, 0x73

    move/from16 v19, v13

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    const/16 v20, 0x1

    :goto_d
    move/from16 v21, v15

    if-eqz v21, :cond_12

    const/16 v21, 0x2

    :goto_e
    invoke-static/range {v16 .. v21}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v16

    move/from16 v13, v16

    .line 146
    move-object/from16 v16, v6

    move/from16 v17, v8

    const/16 v18, 0x6d

    move/from16 v19, v13

    const/16 v20, 0x1

    move/from16 v21, v15

    if-eqz v21, :cond_13

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    const/16 v21, 0x3

    :goto_f
    invoke-static/range {v16 .. v21}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v16

    move/from16 v13, v16

    .line 147
    move-object/from16 v16, v6

    move/from16 v17, v13

    const/16 v18, 0x73

    aput-char v18, v16, v17

    .line 148
    move/from16 v16, v13

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v3, v16

    goto/16 :goto_1

    .line 141
    .end local v15    # "zeropad":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 143
    .restart local v15    # "zeropad":Z
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_9

    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 144
    :cond_f
    const/16 v20, 0x0

    goto :goto_b

    :cond_10
    const/16 v21, 0x0

    goto :goto_c

    .line 145
    :cond_11
    const/16 v20, 0x0

    goto :goto_d

    :cond_12
    const/16 v21, 0x0

    goto :goto_e

    .line 146
    :cond_13
    const/16 v21, 0x0

    goto :goto_f
.end method

.method private static printField([CICIZI)I
    .locals 12

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "formatStr":[C
    move v1, p1

    .local v1, "amt":I
    move v2, p2

    .local v2, "suffix":C
    move v3, p3

    .local v3, "pos":I
    move/from16 v4, p4

    .local v4, "always":Z
    move/from16 v5, p5

    .local v5, "zeropad":I
    move v8, v4

    if-nez v8, :cond_0

    move v8, v1

    if-lez v8, :cond_7

    .line 59
    :cond_0
    move v8, v3

    move v6, v8

    .line 60
    .local v6, "startPos":I
    move v8, v4

    if-eqz v8, :cond_1

    move v8, v5

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    :cond_1
    move v8, v1

    const/16 v9, 0x63

    if-le v8, v9, :cond_3

    .line 61
    :cond_2
    move v8, v1

    const/16 v9, 0x64

    div-int/lit8 v8, v8, 0x64

    move v7, v8

    .line 62
    .local v7, "dig":I
    move-object v8, v0

    move v9, v3

    move v10, v7

    const/16 v11, 0x30

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    move v8, v1

    move v9, v7

    const/16 v10, 0x64

    mul-int/lit8 v9, v9, 0x64

    sub-int/2addr v8, v9

    move v1, v8

    .line 66
    .end local v7    # "dig":I
    :cond_3
    move v8, v4

    if-eqz v8, :cond_4

    move v8, v5

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    :cond_4
    move v8, v1

    const/16 v9, 0x9

    if-gt v8, v9, :cond_5

    move v8, v6

    move v9, v3

    if-eq v8, v9, :cond_6

    .line 67
    :cond_5
    move v8, v1

    const/16 v9, 0xa

    div-int/lit8 v8, v8, 0xa

    move v7, v8

    .line 68
    .restart local v7    # "dig":I
    move-object v8, v0

    move v9, v3

    move v10, v7

    const/16 v11, 0x30

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    move v8, v1

    move v9, v7

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v8, v9

    move v1, v8

    .line 72
    .end local v7    # "dig":I
    :cond_6
    move-object v8, v0

    move v9, v3

    move v10, v1

    const/16 v11, 0x30

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    move-object v8, v0

    move v9, v3

    move v10, v2

    aput-char v10, v8, v9

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 77
    .end local v6    # "startPos":I
    :cond_7
    move v8, v3

    move v0, v8

    .end local v0    # "formatStr":[C
    return v0
.end method
