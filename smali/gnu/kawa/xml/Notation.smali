.class public Lgnu/kawa/xml/Notation;
.super Ljava/lang/Object;
.source "Notation.java"


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Notation;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lgnu/kawa/xml/Notation;Lgnu/kawa/xml/Notation;)Z
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Notation;
    move-object v1, p1

    .local v1, "n1":Lgnu/kawa/xml/Notation;
    move-object v2, p2

    .local v2, "n2":Lgnu/kawa/xml/Notation;
    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v3, v4}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/Notation;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Notation;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/Notation;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/kawa/xml/Notation;

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/xml/Notation;->equals(Lgnu/kawa/xml/Notation;Lgnu/kawa/xml/Notation;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/Notation;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/Notation;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Notation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/Notation;
    return v0
.end method
