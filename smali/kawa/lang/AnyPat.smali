.class public Lkawa/lang/AnyPat;
.super Lkawa/lang/Pattern;
.source "AnyPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AnyPat;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public static make()Lkawa/lang/AnyPat;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lkawa/lang/AnyPat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/lang/AnyPat;-><init>()V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 7

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AnyPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start_vars":I
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    aput-object v6, v4, v5

    .line 25
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lkawa/lang/AnyPat;
    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AnyPat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<match any>"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public varCount()I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AnyPat;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lkawa/lang/AnyPat;
    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method
