.class Landroidx/versionedparcelable/VersionedParcel$1;
.super Ljava/io/ObjectInputStream;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/versionedparcelable/VersionedParcel;


# direct methods
.method constructor <init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 1408
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, p2

    .local v2, "x0":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcel$1;->this$0:Landroidx/versionedparcelable/VersionedParcel;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1412
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel$1;
    move-object v1, p1

    .local v1, "osClass":Ljava/io/ObjectStreamClass;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    .line 1413
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1412
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 1414
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1415
    move-object v3, v2

    move-object v0, v3

    .line 1417
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel$1;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
