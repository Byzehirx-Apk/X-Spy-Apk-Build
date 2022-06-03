.class public Lgnu/kawa/xml/UntypedAtomic;
.super Ljava/lang/Object;
.source "UntypedAtomic.java"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UntypedAtomic;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UntypedAtomic;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/UntypedAtomic;

    iget-object v3, v3, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/UntypedAtomic;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/UntypedAtomic;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UntypedAtomic;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/UntypedAtomic;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/UntypedAtomic;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/UntypedAtomic;
    return-object v0
.end method
