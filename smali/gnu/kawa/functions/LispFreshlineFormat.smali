.class Lgnu/kawa/functions/LispFreshlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field count:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 1110
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispFreshlineFormat;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/ReportFormat;-><init>()V

    .line 1111
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    .line 1112
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
    .line 1117
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispFreshlineFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    const/4 v7, 0x1

    move-object v8, v1

    move v9, v2

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/functions/LispFreshlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    move v5, v6

    .line 1118
    .local v5, "count":I
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispFreshlineFormat;->count:I

    const/high16 v7, -0x60000000

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1119
    :cond_0
    move v6, v5

    if-lez v6, :cond_2

    .line 1121
    move-object v6, v3

    instance-of v6, v6, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_1

    .line 1123
    move-object v6, v3

    check-cast v6, Lgnu/mapping/OutPort;

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->freshLine()V

    .line 1124
    add-int/lit8 v5, v5, -0x1

    .line 1126
    :cond_1
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_2

    .line 1127
    move-object v6, v3

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1129
    :cond_2
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lgnu/kawa/functions/LispFreshlineFormat;
    return v0
.end method
