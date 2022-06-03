.class public Lgnu/expr/Special;
.super Ljava/lang/Object;
.source "Special.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final abstractSpecial:Lgnu/expr/Special;

.field public static final dfault:Lgnu/expr/Special;

.field public static final eof:Ljava/lang/Object;

.field public static final key:Lgnu/expr/Special;

.field public static final optional:Lgnu/expr/Special;

.field public static final rest:Lgnu/expr/Special;

.field public static final undefined:Lgnu/expr/Special;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lgnu/expr/Special;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "undefined"

    invoke-direct {v1, v2}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .line 13
    new-instance v0, Lgnu/expr/Special;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "optional"

    invoke-direct {v1, v2}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    .line 14
    new-instance v0, Lgnu/expr/Special;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "rest"

    invoke-direct {v1, v2}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    .line 15
    new-instance v0, Lgnu/expr/Special;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "key"

    invoke-direct {v1, v2}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    .line 16
    new-instance v0, Lgnu/expr/Special;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "default"

    invoke-direct {v1, v2}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 17
    new-instance v0, Lgnu/expr/Special;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "abstract"

    invoke-direct {v1, v2}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    .line 18
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, p1

    .local v1, "n":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v2, v0

    new-instance v3, Ljava/lang/String;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lgnu/expr/Special;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/expr/Special;
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "optional"

    if-ne v1, v2, :cond_0

    sget-object v1, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    move-object v0, v1

    .line 38
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "rest"

    if-ne v1, v2, :cond_1

    sget-object v1, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    move-object v0, v1

    goto :goto_0

    .line 36
    :cond_1
    move-object v1, v0

    const-string/jumbo v2, "key"

    if-ne v1, v2, :cond_2

    sget-object v1, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    move-object v0, v1

    goto :goto_0

    .line 37
    :cond_2
    move-object v1, v0

    const-string/jumbo v2, "default"

    if-ne v1, v2, :cond_3

    sget-object v1, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object v0, v1

    goto :goto_0

    .line 38
    :cond_3
    new-instance v1, Lgnu/expr/Special;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Special;
    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#!"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 51
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 52
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
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/Special;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-static {v1}, Lgnu/expr/Special;->make(Ljava/lang/String;)Lgnu/expr/Special;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Special;
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Special;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Special;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 61
    return-void
.end method
