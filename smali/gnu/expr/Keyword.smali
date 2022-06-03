.class public Lgnu/expr/Keyword;
.super Lgnu/mapping/Symbol;
.source "Keyword.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final keywordNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lgnu/mapping/Namespace;->create()Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    .line 11
    sget-object v0, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "(keywords)"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Symbol;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    move-object v1, p1

    .local v1, "namespace":Lgnu/mapping/Namespace;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static isKeyword(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/Keyword;

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/expr/Keyword;
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v1, v3

    .line 44
    .local v1, "hash":I
    sget-object v3, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v3

    check-cast v3, Lgnu/expr/Keyword;

    move-object v2, v3

    .line 45
    .local v2, "keyword":Lgnu/expr/Keyword;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 47
    new-instance v3, Lgnu/expr/Keyword;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/expr/Keyword;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 48
    sget-object v3, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Namespace;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 50
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "keyword":Ljava/lang/Object;
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 91
    move-object v4, v0

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 92
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    move-object v0, v4

    .line 94
    .end local v0    # "vals":[Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 89
    .restart local v0    # "vals":[Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 94
    :cond_1
    sget-object v4, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object v0, v4

    goto :goto_1
.end method

.method public static searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "keyword":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "dfault":Ljava/lang/Object;
    move v5, v1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 114
    move-object v5, v0

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v2

    if-ne v5, v6, :cond_0

    .line 115
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v0, v5

    .line 117
    .end local v0    # "vals":[Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 112
    .restart local v0    # "vals":[Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 117
    :cond_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method public asSymbol()Lgnu/mapping/Symbol;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Keyword;
    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/expr/Symbols;->print(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 73
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 74
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
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/expr/Keyword;->name:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    sget-object v1, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/expr/Keyword;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Keyword;
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Keyword;
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
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Keyword;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
