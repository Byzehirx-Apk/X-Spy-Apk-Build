.class final Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;
.super Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
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
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v3, v7

    .line 78
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 79
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v12, v7

    move v7, v12

    move v8, v12

    .line 83
    move v6, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 84
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .line 88
    :cond_0
    move-object v7, v3

    move-object v8, v5

    move v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    move-object v7, v1

    new-instance v8, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a$1;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a$1;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;Ljava/util/Map;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-void
.end method
