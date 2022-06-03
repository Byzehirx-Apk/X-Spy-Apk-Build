.class Lgnu/expr/SimplePrompter;
.super Lgnu/mapping/Procedure1;
.source "Language.java"


# instance fields
.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SimplePrompter;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    .line 965
    move-object v1, v0

    const-string/jumbo v2, "["

    iput-object v2, v1, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    .line 966
    move-object v1, v0

    const-string/jumbo v2, "] "

    iput-object v2, v1, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SimplePrompter;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/InPort;

    if-eqz v4, :cond_0

    .line 972
    move-object v4, v1

    check-cast v4, Lgnu/mapping/InPort;

    move-object v2, v4

    .line 973
    .local v2, "port":Lgnu/mapping/InPort;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 974
    .local v3, "line":I
    move v4, v3

    if-ltz v4, :cond_0

    .line 975
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 977
    .end local v0    # "this":Lgnu/expr/SimplePrompter;
    .end local v2    # "port":Lgnu/mapping/InPort;
    .end local v3    # "line":I
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/SimplePrompter;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0
.end method
