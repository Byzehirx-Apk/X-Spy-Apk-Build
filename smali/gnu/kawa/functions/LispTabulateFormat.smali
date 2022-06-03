.class Lgnu/kawa/functions/LispTabulateFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field colinc:I

.field colnum:I

.field padChar:I

.field relative:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 7

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispTabulateFormat;
    move v1, p1

    .local v1, "colnum":I
    move v2, p2

    .local v2, "colinc":I
    move v3, p3

    .local v3, "padChar":I
    move v4, p4

    .local v4, "relative":Z
    move-object v5, v0

    invoke-direct {v5}, Lgnu/text/ReportFormat;-><init>()V

    .line 1143
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    .line 1144
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    .line 1145
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    .line 1146
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    .line 1147
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispTabulateFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    const/4 v11, 0x1

    move-object v12, v1

    move v13, v2

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v10

    move v5, v10

    .line 1153
    .local v5, "colnum":I
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1154
    :cond_0
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    const/4 v11, 0x1

    move-object v12, v1

    move v13, v2

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v10

    move v6, v10

    .line 1155
    .local v6, "colinc":I
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1157
    :cond_1
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    const/16 v11, 0x20

    move-object v12, v1

    move v13, v2

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v10

    move v7, v10

    .line 1158
    .local v7, "padChar":C
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1159
    :cond_2
    const/4 v10, -0x1

    move v8, v10

    .line 1160
    .local v8, "column":I
    move-object v10, v3

    instance-of v10, v10, Lgnu/mapping/OutPort;

    if-eqz v10, :cond_3

    .line 1161
    move-object v10, v3

    check-cast v10, Lgnu/mapping/OutPort;

    invoke-virtual {v10}, Lgnu/mapping/OutPort;->getColumnNumber()I

    move-result v10

    move v8, v10

    .line 1163
    :cond_3
    move v10, v8

    if-ltz v10, :cond_7

    .line 1165
    move-object v10, v0

    iget-boolean v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-nez v10, :cond_6

    .line 1167
    move v10, v8

    move v11, v5

    if-ge v10, v11, :cond_4

    .line 1168
    move v10, v5

    move v11, v8

    sub-int/2addr v10, v11

    move v9, v10

    .line 1183
    .local v9, "spaces":I
    :goto_0
    add-int/lit8 v9, v9, -0x1

    move v10, v9

    if-ltz v10, :cond_9

    .line 1184
    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1169
    .end local v9    # "spaces":I
    :cond_4
    move v10, v6

    if-gtz v10, :cond_5

    .line 1170
    const/4 v10, 0x0

    move v9, v10

    .restart local v9    # "spaces":I
    goto :goto_0

    .line 1172
    .end local v9    # "spaces":I
    :cond_5
    move v10, v6

    move v11, v8

    move v12, v5

    sub-int/2addr v11, v12

    move v12, v6

    rem-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v9, v10

    .restart local v9    # "spaces":I
    goto :goto_0

    .line 1176
    .end local v9    # "spaces":I
    :cond_6
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v11, v8

    move v12, v5

    add-int/2addr v11, v12

    move v12, v6

    rem-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v9, v10

    .restart local v9    # "spaces":I
    goto :goto_0

    .line 1181
    .end local v9    # "spaces":I
    :cond_7
    move-object v10, v0

    iget-boolean v10, v10, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-eqz v10, :cond_8

    move v10, v5

    :goto_1
    move v9, v10

    .restart local v9    # "spaces":I
    goto :goto_0

    .end local v9    # "spaces":I
    :cond_8
    const/4 v10, 0x2

    goto :goto_1

    .line 1185
    .restart local v9    # "spaces":I
    :cond_9
    move v10, v2

    move v0, v10

    .end local v0    # "this":Lgnu/kawa/functions/LispTabulateFormat;
    return v0
.end method
