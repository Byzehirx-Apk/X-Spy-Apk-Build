.class public Lgnu/mapping/PropertyKey;
.super Ljava/lang/Object;
.source "PropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyKey;, "Lgnu/mapping/PropertyKey<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/PropertyKey;->name:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyKey;, "Lgnu/mapping/PropertyKey<TT;>;"
    move-object v1, p1

    .local v1, "container":Lgnu/mapping/PropertySet;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertyKey;->get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/PropertyKey;, "Lgnu/mapping/PropertyKey<TT;>;"
    return-object v0
.end method

.method public get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyKey;, "Lgnu/mapping/PropertyKey<TT;>;"
    move-object v1, p1

    .local v1, "container":Lgnu/mapping/PropertySet;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/PropertyKey;, "Lgnu/mapping/PropertyKey<TT;>;"
    return-object v0
.end method

.method public set(Lgnu/mapping/PropertySet;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyKey;, "Lgnu/mapping/PropertyKey<TT;>;"
    move-object v1, p1

    .local v1, "container":Lgnu/mapping/PropertySet;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
