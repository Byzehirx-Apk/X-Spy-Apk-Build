.class Lgnu/mapping/EnvironmentMappings;
.super Ljava/util/AbstractSet;
.source "SimpleEnvironment.java"


# instance fields
.field env:Lgnu/mapping/SimpleEnvironment;


# direct methods
.method public constructor <init>(Lgnu/mapping/SimpleEnvironment;)V
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/EnvironmentMappings;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/SimpleEnvironment;
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/EnvironmentMappings;->env:Lgnu/mapping/SimpleEnvironment;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/EnvironmentMappings;
    new-instance v1, Lgnu/mapping/LocationEnumeration;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/EnvironmentMappings;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v2, v3}, Lgnu/mapping/LocationEnumeration;-><init>(Lgnu/mapping/SimpleEnvironment;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/EnvironmentMappings;
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/EnvironmentMappings;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/EnvironmentMappings;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v1}, Lgnu/mapping/SimpleEnvironment;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/EnvironmentMappings;
    return v0
.end method
