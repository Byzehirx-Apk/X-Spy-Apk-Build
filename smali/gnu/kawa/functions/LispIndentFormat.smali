.class Lgnu/kawa/functions/LispIndentFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field columns:I

.field current:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispIndentFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;
    .locals 6

    .prologue
    .line 717
    move v0, p0

    .local v0, "columns":I
    move v1, p1

    .local v1, "current":Z
    new-instance v3, Lgnu/kawa/functions/LispIndentFormat;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/kawa/functions/LispIndentFormat;-><init>()V

    move-object v2, v3

    .line 718
    .local v2, "fmt":Lgnu/kawa/functions/LispIndentFormat;
    move-object v3, v2

    move v4, v0

    iput v4, v3, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    .line 719
    move-object v3, v2

    move v4, v1

    iput-boolean v4, v3, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    .line 720
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "columns":I
    return-object v0
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
    .line 727
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispIndentFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/4 v7, 0x0

    move-object v8, v1

    move v9, v2

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/functions/LispIndentFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    move v5, v6

    .line 728
    .local v5, "columns":I
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/high16 v7, -0x60000000

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 729
    :cond_0
    move-object v6, v3

    instance-of v6, v6, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_1

    .line 730
    move-object v6, v3

    check-cast v6, Lgnu/mapping/OutPort;

    move v7, v5

    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 731
    :cond_1
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lgnu/kawa/functions/LispIndentFormat;
    return v0
.end method
