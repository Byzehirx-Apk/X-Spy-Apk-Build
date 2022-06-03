.class public Lgnu/expr/BuiltinEnvironment;
.super Lgnu/mapping/Environment;
.source "BuiltinEnvironment.java"


# static fields
.field static final instance:Lgnu/expr/BuiltinEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/expr/BuiltinEnvironment;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/expr/BuiltinEnvironment;-><init>()V

    sput-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    .line 12
    sget-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    const-string/jumbo v1, "language-builtins"

    invoke-virtual {v0, v1}, Lgnu/expr/BuiltinEnvironment;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Environment;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/expr/BuiltinEnvironment;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    return-object v0
.end method


# virtual methods
.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "prop":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "loc":Lgnu/mapping/Location;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/BuiltinEnvironment;
    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/BuiltinEnvironment;
    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    move-object v1, v2

    .line 20
    .local v1, "lang":Lgnu/expr/Language;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/BuiltinEnvironment;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/BuiltinEnvironment;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    goto :goto_0
.end method

.method public getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move v4, p4

    .local v4, "create":Z
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, p1

    .local v1, "it":Lgnu/mapping/LocationEnumeration;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 9

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BuiltinEnvironment;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object v5, v2

    sget-object v6, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 26
    const/4 v5, 0x0

    move-object v0, v5

    .line 28
    .end local v0    # "this":Lgnu/expr/BuiltinEnvironment;
    :goto_0
    return-object v0

    .line 27
    .restart local v0    # "this":Lgnu/expr/BuiltinEnvironment;
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    move-object v4, v5

    .line 28
    .local v4, "lang":Lgnu/expr/Language;
    move-object v5, v4

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/Language;->lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v5

    goto :goto_1
.end method
