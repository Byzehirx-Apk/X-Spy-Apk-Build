.class final Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    check-cast v5, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    move-object v6, v2

    check-cast v6, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    move-object v2, v6

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 1141
    move-object v1, v6

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    move-object v6, v2

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 1142
    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    move-object v6, v2

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    .line 1147
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 1149
    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 1153
    :cond_0
    move-object v5, v2

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    .line 136
    move v0, v5

    goto :goto_0
.end method
