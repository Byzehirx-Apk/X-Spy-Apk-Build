.class final Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/storage/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/storage/OnProgressListener",
        "<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/io/File;

.field private synthetic XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

.field private synthetic hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/io/File;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onProgress(Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    move-object v2, v4

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    .line 1093
    move-object v1, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getBytesTransferred()J

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadProgress(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 90
    return-void
.end method
