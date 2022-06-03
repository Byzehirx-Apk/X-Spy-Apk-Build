.class public abstract Lgnu/mapping/Location;
.super Ljava/lang/Object;
.source "Location.java"


# static fields
.field public static final UNBOUND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "(unbound)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    new-instance v2, Lgnu/mapping/PlainLocation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    move-object v1, v2

    .line 169
    .local v1, "loc":Lgnu/mapping/PlainLocation;
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 170
    move-object v2, v1

    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v3, v2, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    .line 171
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "name":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/mapping/IndirectableLocation;
    .locals 8

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v1, v3

    .line 160
    .local v1, "sym":Lgnu/mapping/Symbol;
    new-instance v3, Lgnu/mapping/PlainLocation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    move-object v2, v3

    .line 161
    .local v2, "loc":Lgnu/mapping/PlainLocation;
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 162
    move-object v3, v2

    sget-object v4, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v4, v3, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    .line 163
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Location;
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "init":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v3, Lgnu/mapping/ThreadLocation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 152
    .local v2, "loc":Lgnu/mapping/ThreadLocation;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 153
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "init":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public entered()Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Location;
    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v1, v3

    .line 65
    .local v1, "unb":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 66
    .local v2, "val":Ljava/lang/Object;
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 67
    new-instance v3, Lgnu/mapping/UnboundLocationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/mapping/UnboundLocationException;-><init>(Lgnu/mapping/Location;)V

    throw v3

    .line 68
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getBase()Lgnu/mapping/Location;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public isBound()Z
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v1, v2

    .line 99
    .local v1, "unb":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/mapping/Location;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Location;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isConstant()Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Location;
    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v5, v1

    const-string/jumbo v6, "#<location "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v2, v5

    .line 134
    .local v2, "name":Lgnu/mapping/Symbol;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 135
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 136
    :cond_0
    sget-object v5, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v3, v5

    .line 137
    .local v3, "unb":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 138
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    move-object v6, v3

    if-eq v5, v6, :cond_1

    .line 140
    move-object v5, v1

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 145
    :goto_0
    move-object v5, v1

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 146
    return-void

    .line 144
    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "(unbound)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract set(Ljava/lang/Object;)V
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 120
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 121
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 84
    .local v2, "old":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 85
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 32
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 33
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v2, v4

    .line 34
    .local v2, "sym":Lgnu/mapping/Symbol;
    move-object v4, v1

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 35
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 37
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 38
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 41
    .local v3, "property":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 43
    move-object v4, v1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 44
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 51
    .end local v3    # "property":Ljava/lang/Object;
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 52
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/Location;
    return-object v0
.end method

.method public undefine()V
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Location;
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
