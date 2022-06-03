.class Lgnu/xquery/lang/Prompter;
.super Lgnu/mapping/Procedure1;
.source "XQuery.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/Prompter;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/lang/Prompter;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v5, v1

    check-cast v5, Lgnu/mapping/InPort;

    move-object v2, v5

    .line 1038
    .local v2, "port":Lgnu/mapping/InPort;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 1039
    .local v3, "line":I
    move-object v5, v2

    iget-char v5, v5, Lgnu/mapping/InPort;->readState:C

    move v4, v5

    .line 1040
    .local v4, "state":C
    move v5, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 1041
    const/16 v5, 0x20

    move v4, v5

    .line 1042
    :cond_0
    move v5, v4

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_1

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<!--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1047
    .end local v0    # "this":Lgnu/xquery/lang/Prompter;
    :goto_0
    return-object v0

    .line 1044
    .restart local v0    # "this":Lgnu/xquery/lang/Prompter;
    :cond_1
    move v5, v4

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_2

    .line 1045
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-(:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "c:) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1047
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method
