.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# static fields
.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final TAG:Ljava/lang/String; = "VersionedParcel"

.field private static final TYPE_BINDER:I = 0x5

.field private static final TYPE_PARCELABLE:I = 0x2

.field private static final TYPE_SERIALIZABLE:I = 0x3

.field private static final TYPE_STRING:I = 0x4

.field private static final TYPE_VERSIONED_PARCELABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1492
    return-void
.end method

.method private createException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 8

    .prologue
    .line 1125
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1143
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown exception code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1127
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    move-object v0, v3

    goto :goto_0

    .line 1129
    :pswitch_2
    new-instance v3, Ljava/lang/SecurityException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 1131
    :pswitch_3
    new-instance v3, Landroid/os/BadParcelableException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 1133
    :pswitch_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 1135
    :pswitch_5
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 1137
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 1139
    :pswitch_7
    new-instance v3, Landroid/os/NetworkOnMainThreadException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    move-object v0, v3

    goto :goto_0

    .line 1141
    :pswitch_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 1125
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static findParcelClass(Landroidx/versionedparcelable/VersionedParcelable;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1479
    move-object v0, p0

    .local v0, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1480
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    move-object v2, v1

    invoke-static {v2}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    return-object v0
.end method

.method private static findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1485
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1486
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "%s.%sParcelizer"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1487
    .local v2, "c":Ljava/lang/String;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    return-object v0
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1114
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1115
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private getType(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "t":Ljava/lang/Object;, "TT;"
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 906
    const/4 v2, 0x4

    move v0, v2

    .line 914
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return v0

    .line 907
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 908
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    .line 909
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v2, :cond_2

    .line 910
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 911
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljava/io/Serializable;

    if-eqz v2, :cond_3

    .line 912
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0

    .line 913
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Landroid/os/IBinder;

    if-eqz v2, :cond_4

    .line 914
    const/4 v2, 0x5

    move v0, v2

    goto :goto_0

    .line 916
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cannot be VersionedParcelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readCollection(ILjava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection",
            "<TT;>;>(ITS;)TS;"
        }
    .end annotation

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "fieldId":I
    move-object v2, p2

    .local v2, "list":Ljava/util/Collection;, "TS;"
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v5

    move v3, v5

    .line 1251
    .local v3, "n":I
    move v5, v3

    if-gez v5, :cond_0

    .line 1252
    const/4 v5, 0x0

    move-object v0, v5

    .line 1292
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1254
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move v5, v3

    if-eqz v5, :cond_2

    .line 1255
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v5

    move v4, v5

    .line 1256
    .local v4, "type":I
    move v5, v3

    if-gez v5, :cond_1

    .line 1257
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1259
    :cond_1
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 1292
    .end local v4    # "type":I
    :cond_2
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 1261
    .restart local v4    # "type":I
    :goto_1
    :pswitch_0
    move v5, v3

    if-lez v5, :cond_2

    .line 1262
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1263
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1267
    :goto_2
    :pswitch_1
    move v5, v3

    if-lez v5, :cond_2

    .line 1268
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1269
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1273
    :goto_3
    :pswitch_2
    move v5, v3

    if-lez v5, :cond_2

    .line 1274
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1275
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1279
    :goto_4
    :pswitch_3
    move v5, v3

    if-lez v5, :cond_2

    .line 1280
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1281
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1285
    :goto_5
    :pswitch_4
    move v5, v3

    if-lez v5, :cond_2

    .line 1286
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1287
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 7

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v4

    move-object v3, v4

    .line 1105
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    return-object v0
.end method

.method private readExceptionCode()I
    .locals 3

    .prologue
    .line 1099
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    move v1, v2

    .line 1100
    .local v1, "code":I
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    return v0
.end method

.method protected static readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1438
    move-object v0, p0

    .local v0, "parcelCls":Ljava/lang/String;
    move-object v1, p1

    .local v1, "versionedParcel":Landroidx/versionedparcelable/VersionedParcel;
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    const-class v5, Landroidx/versionedparcelable/VersionedParcel;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 1439
    .local v2, "cls":Ljava/lang/Class;
    move-object v3, v2

    const-string/jumbo v4, "read"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 1440
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v3

    .end local v0    # "parcelCls":Ljava/lang/String;
    return-object v0

    .line 1441
    .end local v2    # "cls":Ljava/lang/Class;
    .restart local v0    # "parcelCls":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1442
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered IllegalAccessException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1443
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1444
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 1445
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 1447
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered InvocationTargetException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1448
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 1449
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered NoSuchMethodException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1450
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 1451
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered ClassNotFoundException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 800
    move-object v7, v1

    if-nez v7, :cond_0

    .line 801
    move-object v7, v0

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 802
    .line 838
    :goto_0
    return-void

    .line 805
    :cond_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    move v3, v7

    .line 806
    .local v3, "n":I
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 807
    move v7, v3

    if-lez v7, :cond_1

    .line 808
    move-object v7, v0

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v7

    move v4, v7

    .line 809
    .local v4, "type":I
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 810
    move v7, v4

    packed-switch v7, :pswitch_data_0

    .line 838
    .end local v4    # "type":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 812
    .restart local v4    # "type":I
    :pswitch_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 813
    .local v6, "v":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 814
    goto :goto_2

    .line 815
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    goto :goto_1

    .line 817
    :pswitch_1
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 818
    .restart local v6    # "v":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    move-object v8, v6

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 819
    goto :goto_3

    .line 820
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_1

    .line 822
    :pswitch_2
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_4
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 823
    .restart local v6    # "v":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    move-object v8, v6

    check-cast v8, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 824
    goto :goto_4

    .line 825
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_4
    goto :goto_1

    .line 827
    :pswitch_3
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_5
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 828
    .restart local v6    # "v":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    move-object v8, v6

    check-cast v8, Ljava/io/Serializable;

    invoke-direct {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 829
    goto :goto_5

    .line 830
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_5
    goto :goto_1

    .line 832
    :pswitch_4
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_6
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 833
    .restart local v6    # "v":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    move-object v8, v6

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 834
    goto :goto_6

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .locals 10

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "s":Ljava/io/Serializable;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 969
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 970
    .line 987
    :goto_0
    return-void

    .line 972
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 973
    .local v2, "name":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 975
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v5

    .line 977
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 978
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 979
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 981
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .line 987
    goto :goto_0

    .line 982
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 983
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VersionedParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected static writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1460
    move-object v0, p0

    .local v0, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    move-object v1, p1

    .local v1, "versionedParcel":Landroidx/versionedparcelable/VersionedParcel;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Landroidx/versionedparcelable/VersionedParcelable;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 1461
    .local v2, "cls":Ljava/lang/Class;
    move-object v3, v2

    const-string/jumbo v4, "write"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-class v8, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    .line 1462
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 1474
    .line 1475
    return-void

    .line 1463
    .end local v2    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1464
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered IllegalAccessException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1465
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1466
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 1467
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 1469
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered InvocationTargetException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1470
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 1471
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered NoSuchMethodException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1472
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 1473
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "VersionedParcel encountered ClassNotFoundException"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 9

    .prologue
    .line 946
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "p":Landroidx/versionedparcelable/VersionedParcelable;
    const/4 v4, 0x0

    move-object v2, v4

    .line 948
    .local v2, "name":Ljava/lang/Class;
    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 952
    .line 953
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 954
    return-void

    .line 949
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 950
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not have a Parcelizer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    return v0
.end method

.method protected readArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[Ljava/lang/Object;, "[TT;"
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v5

    move v2, v5

    .line 1318
    .local v2, "n":I
    move v5, v2

    if-gez v5, :cond_0

    .line 1319
    const/4 v5, 0x0

    move-object v0, v5

    .line 1360
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1321
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 1322
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v2

    if-eqz v5, :cond_2

    .line 1323
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v5

    move v4, v5

    .line 1324
    .local v4, "type":I
    move v5, v2

    if-gez v5, :cond_1

    .line 1325
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1327
    :cond_1
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 1360
    .end local v4    # "type":I
    :cond_2
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1329
    .restart local v4    # "type":I
    :goto_1
    :pswitch_0
    move v5, v2

    if-lez v5, :cond_2

    .line 1330
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1331
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1335
    :goto_2
    :pswitch_1
    move v5, v2

    if-lez v5, :cond_2

    .line 1336
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1337
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1341
    :goto_3
    :pswitch_2
    move v5, v2

    if-lez v5, :cond_2

    .line 1342
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1343
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1347
    :goto_4
    :pswitch_3
    move v5, v2

    if-lez v5, :cond_2

    .line 1348
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1349
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1353
    :goto_5
    :pswitch_4
    move v5, v2

    if-lez v5, :cond_2

    .line 1354
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1355
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public readArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1309
    move-object v3, v1

    move-object v0, v3

    .line 1311
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "def":Z
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    move v3, v1

    move v0, v3

    .line 366
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method protected readBooleanArray()[Z
    .locals 7

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v4

    move v1, v4

    .line 552
    .local v1, "n":I
    move v4, v1

    if-gez v4, :cond_0

    .line 553
    const/4 v4, 0x0

    move-object v0, v4

    .line 559
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 555
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move v4, v1

    new-array v4, v4, [Z

    move-object v2, v4

    .line 556
    .local v2, "val":[Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 557
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    aput-boolean v6, v4, v5

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 557
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 559
    :cond_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public readBooleanArray([ZI)[Z
    .locals 5

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[Z
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 543
    move-object v3, v1

    move-object v0, v3

    .line 545
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroid/os/Bundle;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    move-object v3, v1

    move-object v0, v3

    .line 460
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public readByte(BI)B
    .locals 5

    .prologue
    .line 1151
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "def":B
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1152
    move v3, v1

    move v0, v3

    .line 1154
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move v0, v3

    goto :goto_0
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .locals 5

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[B
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    move-object v3, v1

    move-object v0, v3

    .line 439
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public readCharArray([CI)[C
    .locals 9

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[C
    move v2, p2

    .local v2, "fieldId":I
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 581
    move-object v6, v1

    move-object v0, v6

    .line 591
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 583
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v6

    move v3, v6

    .line 584
    .local v3, "n":I
    move v6, v3

    if-gez v6, :cond_1

    .line 585
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 587
    :cond_1
    move v6, v3

    new-array v6, v6, [C

    move-object v4, v6

    .line 588
    .local v4, "val":[C
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 589
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v8

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 591
    :cond_2
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method protected abstract readDouble()D
.end method

.method public readDouble(DI)D
    .locals 7

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-wide v1, p1

    .local v1, "def":D
    move v3, p3

    .local v3, "fieldId":I
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    move-wide v4, v1

    move-wide v0, v4

    .line 408
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0
.end method

.method protected readDoubleArray()[D
    .locals 8

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v4

    move v1, v4

    .line 760
    .local v1, "n":I
    move v4, v1

    if-gez v4, :cond_0

    .line 761
    const/4 v4, 0x0

    move-object v0, v4

    .line 767
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 763
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move v4, v1

    new-array v4, v4, [D

    move-object v2, v4

    .line 764
    .local v2, "val":[D
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 765
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 764
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 767
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public readDoubleArray([DI)[D
    .locals 5

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[D
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 751
    move-object v3, v1

    move-object v0, v3

    .line 753
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public readException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .locals 8

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Ljava/lang/Exception;
    move v2, p2

    .local v2, "fieldId":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1077
    move-object v5, v1

    move-object v0, v5

    .line 1084
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1079
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/versionedparcelable/VersionedParcel;->readExceptionCode()I

    move-result v5

    move v3, v5

    .line 1080
    .local v3, "code":I
    move v5, v3

    if-eqz v5, :cond_1

    .line 1081
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1082
    .local v4, "msg":Ljava/lang/String;
    move-object v5, v0

    move v6, v3

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1084
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .locals 5

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "def":F
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    move v3, v1

    move v0, v3

    .line 397
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method protected readFloatArray()[F
    .locals 7

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v4

    move v1, v4

    .line 716
    .local v1, "n":I
    move v4, v1

    if-gez v4, :cond_0

    .line 717
    const/4 v4, 0x0

    move-object v0, v4

    .line 723
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 719
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move v4, v1

    new-array v4, v4, [F

    move-object v2, v4

    .line 720
    .local v2, "val":[F
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 721
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v6

    aput v6, v4, v5

    .line 720
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 723
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public readFloatArray([FI)[F
    .locals 5

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[F
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 707
    move-object v3, v1

    move-object v0, v3

    .line 709
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .locals 5

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "def":I
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    move v3, v1

    move v0, v3

    .line 376
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method protected readIntArray()[I
    .locals 7

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v4

    move v1, v4

    .line 628
    .local v1, "n":I
    move v4, v1

    if-gez v4, :cond_0

    .line 629
    const/4 v4, 0x0

    move-object v0, v4

    .line 635
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 631
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move v4, v1

    new-array v4, v4, [I

    move-object v2, v4

    .line 632
    .local v2, "val":[I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 633
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 635
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public readIntArray([II)[I
    .locals 5

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[I
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 619
    move-object v3, v1

    move-object v0, v3

    .line 621
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1243
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1244
    move-object v3, v1

    move-object v0, v3

    .line 1246
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    move v4, v2

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(ILjava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .locals 7

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-wide v1, p1

    .local v1, "def":J
    move v3, p3

    .local v3, "fieldId":I
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 384
    move-wide v4, v1

    move-wide v0, v4

    .line 386
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0
.end method

.method protected readLongArray()[J
    .locals 8

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v4

    move v1, v4

    .line 672
    .local v1, "n":I
    move v4, v1

    if-gez v4, :cond_0

    .line 673
    const/4 v4, 0x0

    move-object v0, v4

    .line 679
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 675
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move v4, v1

    new-array v4, v4, [J

    move-object v2, v4

    .line 676
    .local v2, "val":[J
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 677
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 676
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 679
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public readLongArray([JI)[J
    .locals 5

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":[J
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    move-object v3, v1

    move-object v0, v3

    .line 665
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroid/os/Parcelable;, "TT;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    move-object v3, v1

    move-object v0, v3

    .line 448
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .locals 10

    .prologue
    .line 1396
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1397
    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1402
    const/4 v5, 0x0

    move-object v0, v5

    .line 1420
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1405
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v5

    move-object v2, v5

    .line 1406
    .local v2, "serializedData":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v5

    .line 1408
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Landroidx/versionedparcelable/VersionedParcel$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    move-object v4, v5

    .line 1420
    .local v4, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v5

    goto :goto_0

    .line 1421
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1422
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VersionedParcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1425
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 1426
    .local v4, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;I)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1224
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1225
    move-object v3, v1

    move-object v0, v3

    .line 1227
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    move v4, v2

    new-instance v5, Landroidx/collection/ArraySet;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(ILjava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object v0, v3

    goto :goto_0
.end method

.method public readSize(Landroid/util/Size;I)Landroid/util/Size;
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroid/util/Size;
    move v2, p2

    .local v2, "fieldId":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1163
    move-object v5, v1

    move-object v0, v5

    .line 1170
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1165
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1166
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v5

    move v3, v5

    .line 1167
    .local v3, "width":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v5

    move v4, v5

    .line 1168
    .local v4, "height":I
    new-instance v5, Landroid/util/Size;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    move-object v0, v5

    goto :goto_0

    .line 1170
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public readSizeF(Landroid/util/SizeF;I)Landroid/util/SizeF;
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroid/util/SizeF;
    move v2, p2

    .local v2, "fieldId":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1179
    move-object v5, v1

    move-object v0, v5

    .line 1186
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1181
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1182
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v5

    move v3, v5

    .line 1183
    .local v3, "width":F
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v5

    move v4, v5

    .line 1184
    .local v4, "height":F
    new-instance v5, Landroid/util/SizeF;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Landroid/util/SizeF;-><init>(FF)V

    move-object v0, v5

    goto :goto_0

    .line 1186
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public readSparseBooleanArray(Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .locals 10

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroid/util/SparseBooleanArray;
    move v2, p2

    .local v2, "fieldId":I
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1196
    move-object v6, v1

    move-object v0, v6

    .line 1208
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .line 1198
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v6

    move v3, v6

    .line 1199
    .local v3, "n":I
    move v6, v3

    if-gez v6, :cond_1

    .line 1200
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 1202
    :cond_1
    new-instance v6, Landroid/util/SparseBooleanArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v3

    invoke-direct {v7, v8}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v4, v6

    .line 1203
    .local v4, "sa":Landroid/util/SparseBooleanArray;
    const/4 v6, 0x0

    move v5, v6

    .line 1204
    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 1205
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1206
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1208
    :cond_2
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Ljava/lang/String;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    move-object v3, v1

    move-object v0, v3

    .line 418
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .locals 5

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroid/os/IBinder;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    move-object v3, v1

    move-object v0, v3

    .line 428
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1382
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1383
    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1384
    const/4 v2, 0x0

    move-object v0, v2

    .line 1386
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 1366
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1367
    move-object v3, v1

    move-object v0, v3

    .line 1369
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcel;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .locals 0
    .param p1, "allowSerialization"    # Z
    .param p2, "ignoreParcelables"    # Z

    .prologue
    .line 242
    return-void
.end method

.method protected writeArray([Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[Ljava/lang/Object;, "[TT;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 859
    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 860
    .line 902
    :goto_0
    return-void

    .line 863
    :cond_0
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 864
    .local v2, "n":I
    const/4 v5, 0x0

    move v3, v5

    .line 865
    .local v3, "i":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 866
    move v5, v2

    if-lez v5, :cond_1

    .line 867
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v5

    move v4, v5

    .line 868
    .local v4, "type":I
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 869
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 902
    .end local v4    # "type":I
    :cond_1
    goto :goto_0

    .line 871
    .restart local v4    # "type":I
    :goto_1
    :pswitch_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 872
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 873
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 877
    :goto_2
    :pswitch_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 878
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 879
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 883
    :goto_3
    :pswitch_2
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 884
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 889
    :goto_4
    :pswitch_3
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 890
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Ljava/io/Serializable;

    invoke-direct {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 891
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 895
    :goto_5
    :pswitch_4
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 896
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 897
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public writeArray([Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 852
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    .line 853
    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .locals 5

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "val":Z
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 268
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 269
    return-void
.end method

.method protected writeBooleanArray([Z)V
    .locals 7

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[Z
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 529
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 530
    .local v2, "n":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 531
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 532
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 534
    .line 537
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_1
    :goto_2
    return-void

    .line 535
    :cond_2
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_2
.end method

.method public writeBooleanArray([ZI)V
    .locals 5

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[Z
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 522
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    .line 523
    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .locals 5

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Landroid/os/Bundle;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 259
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    .line 260
    return-void
.end method

.method public writeByte(BI)V
    .locals 5

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "val":B
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 469
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 470
    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .locals 5

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 278
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    .line 279
    return-void
.end method

.method protected abstract writeByteArray([BII)V
.end method

.method public writeByteArray([BIII)V
    .locals 9

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "len":I
    move v4, p4

    .local v4, "fieldId":I
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 290
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BII)V

    .line 291
    return-void
.end method

.method public writeCharArray([CI)V
    .locals 8

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[C
    move v2, p2

    .local v2, "fieldId":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 566
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 567
    move-object v5, v1

    array-length v5, v5

    move v3, v5

    .line 568
    .local v3, "n":I
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 569
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 570
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 569
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 572
    .line 575
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 573
    :cond_1
    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_1
.end method

.method protected abstract writeDouble(D)V
.end method

.method public writeDouble(DI)V
    .locals 9

    .prologue
    .line 325
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-wide v2, p1

    .local v2, "val":D
    move v4, p3

    .local v4, "fieldId":I
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 326
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 327
    return-void
.end method

.method protected writeDoubleArray([D)V
    .locals 8

    .prologue
    .line 736
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, p1

    .local v2, "val":[D
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 737
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 738
    .local v3, "n":I
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 739
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 740
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 739
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    .line 745
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 743
    :cond_1
    move-object v5, v1

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_1
.end method

.method public writeDoubleArray([DI)V
    .locals 5

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[D
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 730
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    .line 731
    return-void
.end method

.method public writeException(Ljava/lang/Exception;I)V
    .locals 8

    .prologue
    .line 1013
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move v2, p2

    .local v2, "fieldId":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1014
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1015
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/versionedparcelable/VersionedParcel;->writeNoException()V

    .line 1016
    .line 1053
    :goto_0
    return-void

    .line 1018
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .line 1019
    .local v3, "code":I
    move-object v4, v1

    instance-of v4, v4, Landroid/os/Parcelable;

    if-eqz v4, :cond_2

    move-object v4, v1

    .line 1020
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/os/Parcelable;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 1023
    const/16 v4, -0x9

    move v3, v4

    .line 1039
    :cond_1
    :goto_1
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1040
    move v4, v3

    if-nez v4, :cond_a

    .line 1041
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_9

    .line 1042
    move-object v4, v1

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 1024
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-eqz v4, :cond_3

    .line 1025
    const/4 v4, -0x1

    move v3, v4

    goto :goto_1

    .line 1026
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Landroid/os/BadParcelableException;

    if-eqz v4, :cond_4

    .line 1027
    const/4 v4, -0x2

    move v3, v4

    goto :goto_1

    .line 1028
    :cond_4
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_5

    .line 1029
    const/4 v4, -0x3

    move v3, v4

    goto :goto_1

    .line 1030
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/NullPointerException;

    if-eqz v4, :cond_6

    .line 1031
    const/4 v4, -0x4

    move v3, v4

    goto :goto_1

    .line 1032
    :cond_6
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_7

    .line 1033
    const/4 v4, -0x5

    move v3, v4

    goto :goto_1

    .line 1034
    :cond_7
    move-object v4, v1

    instance-of v4, v4, Landroid/os/NetworkOnMainThreadException;

    if-eqz v4, :cond_8

    .line 1035
    const/4 v4, -0x6

    move v3, v4

    goto :goto_1

    .line 1036
    :cond_8
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/UnsupportedOperationException;

    if-eqz v4, :cond_1

    .line 1037
    const/4 v4, -0x7

    move v3, v4

    goto :goto_1

    .line 1044
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1046
    :cond_a
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1047
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 1053
    :goto_2
    goto :goto_0

    .line 1050
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1047
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "val":F
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 317
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 318
    return-void
.end method

.method protected writeFloatArray([F)V
    .locals 7

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[F
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 693
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 694
    .local v2, "n":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 695
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 696
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 695
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    .line 701
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 699
    :cond_1
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_1
.end method

.method public writeFloatArray([FI)V
    .locals 5

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[F
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 686
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    .line 687
    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move v1, p1

    .local v1, "val":I
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 299
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 300
    return-void
.end method

.method protected writeIntArray([I)V
    .locals 7

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[I
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 605
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 606
    .local v2, "n":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 607
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 608
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    .line 613
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 611
    :cond_1
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_1
.end method

.method public writeIntArray([II)V
    .locals 5

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[I
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 598
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    .line 599
    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 796
    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .locals 9

    .prologue
    .line 307
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-wide v2, p1

    .local v2, "val":J
    move v4, p3

    .local v4, "fieldId":I
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 308
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 309
    return-void
.end method

.method protected writeLongArray([J)V
    .locals 8

    .prologue
    .line 648
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, p1

    .local v2, "val":[J
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 649
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 650
    .local v3, "n":I
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 651
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 652
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 651
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 654
    .line 657
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 655
    :cond_1
    move-object v5, v1

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_1
.end method

.method public writeLongArray([JI)V
    .locals 5

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":[J
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 642
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    .line 643
    return-void
.end method

.method protected writeNoException()V
    .locals 3

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1064
    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .locals 5

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "p":Landroid/os/Parcelable;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 356
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 357
    return-void
.end method

.method public writeSerializable(Ljava/io/Serializable;I)V
    .locals 5

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "s":Ljava/io/Serializable;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 964
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 965
    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 782
    return-void
.end method

.method public writeSize(Landroid/util/Size;I)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Landroid/util/Size;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 479
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 480
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 481
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 482
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 484
    :cond_0
    return-void

    .line 479
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public writeSizeF(Landroid/util/SizeF;I)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Landroid/util/SizeF;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 493
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 494
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 495
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 496
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 498
    :cond_0
    return-void

    .line 493
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public writeSparseBooleanArray(Landroid/util/SparseBooleanArray;I)V
    .locals 8

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Landroid/util/SparseBooleanArray;
    move v2, p2

    .local v2, "fieldId":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 504
    move-object v5, v1

    if-nez v5, :cond_0

    .line 505
    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 506
    .line 516
    :goto_0
    return-void

    .line 508
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 509
    .local v3, "n":I
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 510
    const/4 v5, 0x0

    move v4, v5

    .line 511
    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 512
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 513
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 514
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 516
    :cond_1
    goto :goto_0
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 335
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Landroid/os/IBinder;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 344
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 345
    return-void
.end method

.method protected abstract writeStrongInterface(Landroid/os/IInterface;)V
.end method

.method public writeStrongInterface(Landroid/os/IInterface;I)V
    .locals 5

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "val":Landroid/os/IInterface;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 250
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 251
    return-void
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 5

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "p":Landroidx/versionedparcelable/VersionedParcelable;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 935
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 936
    .line 943
    :goto_0
    return-void

    .line 938
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 940
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v3

    move-object v2, v3

    .line 941
    .local v2, "subParcel":Landroidx/versionedparcelable/VersionedParcel;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 942
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    .line 943
    goto :goto_0
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .locals 5

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, p1

    .local v1, "p":Landroidx/versionedparcelable/VersionedParcelable;
    move v2, p2

    .local v2, "fieldId":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 928
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 929
    return-void
.end method
