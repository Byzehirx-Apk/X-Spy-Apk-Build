.class public abstract Landroid/support/v4/os/IResultReceiver$Stub;
.super Landroid/os/Binder;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.os.IResultReceiver"

.field static final TRANSACTION_send:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 16
    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "android.support.v4.os.IResultReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/os/IResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "obj":Landroid/os/IBinder;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 25
    const/4 v2, 0x0

    move-object v0, v2

    .line 31
    .end local v0    # "obj":Landroid/os/IBinder;
    .local v1, "iin":Landroid/os/IInterface;
    :goto_0
    return-object v0

    .line 27
    .end local v1    # "iin":Landroid/os/IInterface;
    .restart local v0    # "obj":Landroid/os/IBinder;
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "android.support.v4.os.IResultReceiver"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 28
    .restart local v1    # "iin":Landroid/os/IInterface;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/os/IResultReceiver;

    if-eqz v2, :cond_1

    .line 29
    move-object v2, v1

    check-cast v2, Landroid/support/v4/os/IResultReceiver;

    move-object v0, v2

    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroid/support/v4/os/IResultReceiver$Stub;
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "data":Landroid/os/Parcel;
    move-object v3, p3

    .local v3, "reply":Landroid/os/Parcel;
    move/from16 v4, p4

    .local v4, "flags":I
    move v7, v1

    sparse-switch v7, :sswitch_data_0

    .line 62
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-super {v7, v8, v9, v10, v11}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Landroid/support/v4/os/IResultReceiver$Stub;
    :goto_0
    return v0

    .line 43
    .restart local v0    # "this":Landroid/support/v4/os/IResultReceiver$Stub;
    :sswitch_0
    move-object v7, v3

    const-string/jumbo v8, "android.support.v4.os.IResultReceiver"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 48
    :sswitch_1
    move-object v7, v2

    const-string/jumbo v8, "android.support.v4.os.IResultReceiver"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v5, v7

    .line 52
    .local v5, "_arg0":I
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 53
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object v6, v7

    .line 58
    .local v6, "_arg1":Landroid/os/Bundle;
    :goto_1
    move-object v7, v0

    move v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/os/IResultReceiver$Stub;->send(ILandroid/os/Bundle;)V

    .line 59
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 56
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v7, 0x0

    move-object v6, v7

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
