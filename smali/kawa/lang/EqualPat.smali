.class public Lkawa/lang/EqualPat;
.super Lkawa/lang/Pattern;
.source "EqualPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Pattern;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    return-void
.end method

.method public static make(Ljava/lang/Object;)Lkawa/lang/EqualPat;
    .locals 5

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    new-instance v1, Lkawa/lang/EqualPat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkawa/lang/EqualPat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start_vars":I
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_0

    .line 27
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 28
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lkawa/lang/EqualPat;
    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<equals: "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 36
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 37
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 38
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public varCount()I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lkawa/lang/EqualPat;
    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lkawa/lang/EqualPat;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
