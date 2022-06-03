.class Lgnu/kawa/functions/LispChoiceFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field choices:[Ljava/text/Format;

.field lastIsDefault:Z

.field param:I

.field skipIfFalse:Z

.field testBoolean:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1036
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispChoiceFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispChoiceFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    if-eqz v7, :cond_1

    .line 1050
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    :goto_0
    aget-object v7, v7, v8

    move-object v5, v7

    .line 1051
    .local v5, "fmt":Ljava/text/Format;
    add-int/lit8 v2, v2, 0x1

    .line 1073
    :goto_1
    move-object v7, v5

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v7

    move v0, v7

    .end local v0    # "this":Lgnu/kawa/functions/LispChoiceFormat;
    .end local v5    # "fmt":Ljava/text/Format;
    :goto_2
    return v0

    .line 1050
    .restart local v0    # "this":Lgnu/kawa/functions/LispChoiceFormat;
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    if-nez v7, :cond_6

    .line 1055
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    const/high16 v8, -0x60000000

    move-object v9, v1

    move v10, v2

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/functions/LispChoiceFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    move v6, v7

    .line 1057
    .local v6, "index":I
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1058
    :cond_2
    move v7, v6

    if-ltz v7, :cond_3

    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 1060
    :cond_3
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    if-eqz v7, :cond_5

    .line 1061
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    .line 1065
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    move v8, v6

    aget-object v7, v7, v8

    move-object v5, v7

    .line 1066
    .restart local v5    # "fmt":Ljava/text/Format;
    goto :goto_1

    .line 1063
    .end local v5    # "fmt":Ljava/text/Format;
    :cond_5
    move v7, v2

    move v0, v7

    goto :goto_2

    .line 1069
    .end local v6    # "index":I
    :cond_6
    move-object v7, v1

    move v8, v2

    aget-object v7, v7, v8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v7, v8, :cond_7

    .line 1070
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    goto :goto_2

    .line 1071
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v5, v7

    .restart local v5    # "fmt":Ljava/text/Format;
    goto :goto_1
.end method
