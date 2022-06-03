.class final Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;
.super Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b$1;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    return-void
.end method
