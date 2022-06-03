.class Lgnu/kawa/functions/LispRepositionFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field absolute:Z

.field backwards:Z

.field count:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 6

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispRepositionFormat;
    move v1, p1

    .local v1, "count":I
    move v2, p2

    .local v2, "backwards":Z
    move v3, p3

    .local v3, "absolute":Z
    move-object v4, v0

    invoke-direct {v4}, Lgnu/text/ReportFormat;-><init>()V

    .line 1085
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/kawa/functions/LispRepositionFormat;->count:I

    .line 1086
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lgnu/kawa/functions/LispRepositionFormat;->backwards:Z

    .line 1087
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    .line 1088
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispRepositionFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispRepositionFormat;->count:I

    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    move-object v8, v1

    move v9, v2

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/functions/LispRepositionFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    move v5, v6

    .line 1095
    .local v5, "count":I
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/kawa/functions/LispRepositionFormat;->absolute:Z

    if-nez v6, :cond_1

    .line 1097
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/kawa/functions/LispRepositionFormat;->backwards:Z

    if-eqz v6, :cond_0

    .line 1098
    move v6, v5

    neg-int v6, v6

    move v5, v6

    .line 1099
    :cond_0
    move v6, v5

    move v7, v2

    add-int/2addr v6, v7

    move v5, v6

    .line 1101
    :cond_1
    move v6, v5

    if-gez v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    move v0, v6

    .end local v0    # "this":Lgnu/kawa/functions/LispRepositionFormat;
    return v0

    .line 1093
    .end local v5    # "count":I
    .restart local v0    # "this":Lgnu/kawa/functions/LispRepositionFormat;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 1101
    .restart local v5    # "count":I
    :cond_3
    move v6, v5

    move-object v7, v1

    array-length v7, v7

    if-le v6, v7, :cond_4

    move-object v6, v1

    array-length v6, v6

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_1
.end method
