.class Lgnu/text/URIStringPath;
.super Lgnu/text/URIPath;
.source "URIPath.java"


# instance fields
.field uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIStringPath;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, p2

    .local v2, "uriString":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    .line 396
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/text/URIStringPath;->uriString:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public toURIString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lgnu/text/URIStringPath;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/URIStringPath;->uriString:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/URIStringPath;
    return-object v0
.end method
