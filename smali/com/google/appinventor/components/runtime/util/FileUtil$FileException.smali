.class public Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileException"
.end annotation


# instance fields
.field private final uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 559
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>()V

    .line 560
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:I

    .line 561
    return-void
.end method


# virtual methods
.method public getErrorMessageNumber()I
    .locals 2

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:I

    move v0, v1

    return v0
.end method
