.class Lgnu/kawa/functions/LispRealFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field arg5:I

.field arg6:I

.field arg7:I

.field argsUsed:I

.field internalPad:Z

.field op:C

.field showPlus:Z


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispRealFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    .line 1208
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v3, -0x50000000

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v3, -0x50000000

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v3, -0x50000000

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v3, -0x50000000

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/high16 v3, -0x50000000

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    const/high16 v3, -0x50000000

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/high16 v3, -0x50000000

    if-ne v2, v3, :cond_8

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1215
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_1

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1216
    :cond_1
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_2

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1217
    :cond_2
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_3

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1218
    :cond_3
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_4

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1219
    :cond_4
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_5

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1220
    :cond_5
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_6

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1221
    :cond_6
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_7

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1222
    :cond_7
    return-void

    .line 1208
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispRealFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x64

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v8

    .line 1296
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v8

    move-object v6, v8

    .line 1297
    .local v6, "fmt":Ljava/text/Format;
    move v8, v2

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    move v2, v8

    .line 1298
    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v8, v9

    check-cast v8, Lgnu/math/RealNum;

    move-object v7, v8

    .line 1299
    .local v7, "value":Lgnu/math/RealNum;
    move-object v8, v6

    move-object v9, v7

    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 1300
    move-object v8, v3

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1301
    move v8, v2

    move v0, v8

    .end local v0    # "this":Lgnu/kawa/functions/LispRealFormat;
    return v0
.end method

.method public resolve([Ljava/lang/Object;I)Ljava/text/Format;
    .locals 14

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispRealFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object v8, v0

    iget-char v8, v8, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v9, 0x24

    if-ne v8, v9, :cond_4

    .line 1228
    new-instance v8, Lgnu/math/FixedRealFormat;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/math/FixedRealFormat;-><init>()V

    move-object v3, v8

    .line 1229
    .local v3, "mfmt":Lgnu/math/FixedRealFormat;
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v9, 0x2

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v8

    move v4, v8

    .line 1230
    .local v4, "decimals":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1231
    :cond_0
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/4 v9, 0x1

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v8

    move v5, v8

    .line 1232
    .local v5, "digits":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1233
    :cond_1
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v8

    move v6, v8

    .line 1234
    .local v6, "width":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1235
    :cond_2
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/16 v9, 0x20

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v8

    move v7, v8

    .line 1236
    .local v7, "padChar":C
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1238
    :cond_3
    move-object v8, v3

    move v9, v4

    invoke-virtual {v8, v9}, Lgnu/math/FixedRealFormat;->setMaximumFractionDigits(I)V

    .line 1239
    move-object v8, v3

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/math/FixedRealFormat;->setMinimumIntegerDigits(I)V

    .line 1240
    move-object v8, v3

    move v9, v6

    iput v9, v8, Lgnu/math/FixedRealFormat;->width:I

    .line 1241
    move-object v8, v3

    move v9, v7

    iput-char v9, v8, Lgnu/math/FixedRealFormat;->padChar:C

    .line 1242
    move-object v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    iput-boolean v9, v8, Lgnu/math/FixedRealFormat;->internalPad:Z

    .line 1243
    move-object v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean v9, v8, Lgnu/math/FixedRealFormat;->showPlus:Z

    .line 1244
    move-object v8, v3

    move-object v0, v8

    .line 1288
    .end local v0    # "this":Lgnu/kawa/functions/LispRealFormat;
    .end local v3    # "mfmt":Lgnu/math/FixedRealFormat;
    .end local v4    # "decimals":I
    .end local v5    # "digits":I
    .end local v6    # "width":I
    .end local v7    # "padChar":C
    :goto_0
    return-object v0

    .line 1246
    .restart local v0    # "this":Lgnu/kawa/functions/LispRealFormat;
    :cond_4
    move-object v8, v0

    iget-char v8, v8, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v9, 0x46

    if-ne v8, v9, :cond_a

    .line 1248
    new-instance v8, Lgnu/math/FixedRealFormat;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/math/FixedRealFormat;-><init>()V

    move-object v3, v8

    .line 1249
    .restart local v3    # "mfmt":Lgnu/math/FixedRealFormat;
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v8

    move v4, v8

    .line 1250
    .local v4, "width":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 1251
    :cond_5
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/4 v9, -0x1

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v8

    move v5, v8

    .line 1252
    .local v5, "decimals":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 1253
    :cond_6
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v8

    move v6, v8

    .line 1254
    .local v6, "scale":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 1255
    :cond_7
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v9

    iput-char v9, v8, Lgnu/math/FixedRealFormat;->overflowChar:C

    .line 1256
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 1257
    :cond_8
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/16 v9, 0x20

    move-object v10, v1

    move v11, v2

    invoke-static {v8, v9, v10, v11}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v8

    move v7, v8

    .line 1258
    .restart local v7    # "padChar":C
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_9

    add-int/lit8 v2, v2, 0x1

    .line 1259
    :cond_9
    move-object v8, v3

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/math/FixedRealFormat;->setMaximumFractionDigits(I)V

    .line 1260
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgnu/math/FixedRealFormat;->setMinimumIntegerDigits(I)V

    .line 1261
    move-object v8, v3

    move v9, v4

    iput v9, v8, Lgnu/math/FixedRealFormat;->width:I

    .line 1262
    move-object v8, v3

    move v9, v6

    iput v9, v8, Lgnu/math/FixedRealFormat;->scale:I

    .line 1263
    move-object v8, v3

    move v9, v7

    iput-char v9, v8, Lgnu/math/FixedRealFormat;->padChar:C

    .line 1264
    move-object v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    iput-boolean v9, v8, Lgnu/math/FixedRealFormat;->internalPad:Z

    .line 1265
    move-object v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean v9, v8, Lgnu/math/FixedRealFormat;->showPlus:Z

    .line 1266
    move-object v8, v3

    move-object v0, v8

    goto/16 :goto_0

    .line 1270
    .end local v3    # "mfmt":Lgnu/math/FixedRealFormat;
    .end local v4    # "width":I
    .end local v5    # "decimals":I
    .end local v6    # "scale":I
    .end local v7    # "padChar":C
    :cond_a
    new-instance v8, Lgnu/math/ExponentialFormat;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/math/ExponentialFormat;-><init>()V

    move-object v3, v8

    .line 1271
    .local v3, "efmt":Lgnu/math/ExponentialFormat;
    move-object v8, v3

    const/4 v9, 0x1

    iput-boolean v9, v8, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    .line 1272
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v9

    iput v9, v8, Lgnu/math/ExponentialFormat;->width:I

    .line 1273
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_b

    add-int/lit8 v2, v2, 0x1

    .line 1274
    :cond_b
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/4 v10, -0x1

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v9

    iput v9, v8, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 1275
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 1276
    :cond_c
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v9

    iput v9, v8, Lgnu/math/ExponentialFormat;->expDigits:I

    .line 1277
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_d

    add-int/lit8 v2, v2, 0x1

    .line 1278
    :cond_d
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/4 v10, 0x1

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v9

    iput v9, v8, Lgnu/math/ExponentialFormat;->intDigits:I

    .line 1279
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_e

    add-int/lit8 v2, v2, 0x1

    .line 1280
    :cond_e
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v9

    iput-char v9, v8, Lgnu/math/ExponentialFormat;->overflowChar:C

    .line 1281
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 1282
    :cond_f
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    const/16 v10, 0x20

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v9

    iput-char v9, v8, Lgnu/math/ExponentialFormat;->padChar:C

    .line 1283
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_10

    add-int/lit8 v2, v2, 0x1

    .line 1284
    :cond_10
    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/16 v10, 0x45

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v9

    iput-char v9, v8, Lgnu/math/ExponentialFormat;->exponentChar:C

    .line 1285
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/high16 v9, -0x60000000

    if-ne v8, v9, :cond_11

    add-int/lit8 v2, v2, 0x1

    .line 1286
    :cond_11
    move-object v8, v3

    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v10, 0x47

    if-ne v9, v10, :cond_12

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Lgnu/math/ExponentialFormat;->general:Z

    .line 1287
    move-object v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean v9, v8, Lgnu/math/ExponentialFormat;->showPlus:Z

    .line 1288
    move-object v8, v3

    move-object v0, v8

    goto/16 :goto_0

    .line 1286
    :cond_12
    const/4 v9, 0x0

    goto :goto_1
.end method
