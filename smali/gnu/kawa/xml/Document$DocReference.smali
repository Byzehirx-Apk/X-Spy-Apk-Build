.class Lgnu/kawa/xml/Document$DocReference;
.super Ljava/lang/ref/SoftReference;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/xml/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocReference"
.end annotation


# static fields
.field static queue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field key:Lgnu/text/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Lgnu/text/Path;Lgnu/kawa/xml/KDocument;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Document$DocReference;
    move-object v1, p1

    .local v1, "key":Lgnu/text/Path;
    move-object v2, p2

    .local v2, "doc":Lgnu/kawa/xml/KDocument;
    move-object v3, v0

    move-object v4, v2

    sget-object v5, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 53
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/xml/Document$DocReference;->key:Lgnu/text/Path;

    .line 54
    return-void
.end method
