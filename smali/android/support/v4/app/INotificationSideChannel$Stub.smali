.class public abstract Landroid/support/v4/app/INotificationSideChannel$Stub;
.super Landroid/os/Binder;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.app.INotificationSideChannel"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_notify:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 21
    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/INotificationSideChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "obj":Landroid/os/IBinder;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 30
    const/4 v2, 0x0

    move-object v0, v2

    .line 36
    .end local v0    # "obj":Landroid/os/IBinder;
    .local v1, "iin":Landroid/os/IInterface;
    :goto_0
    return-object v0

    .line 32
    .end local v1    # "iin":Landroid/os/IInterface;
    .restart local v0    # "obj":Landroid/os/IBinder;
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "android.support.v4.app.INotificationSideChannel"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 33
    .restart local v1    # "iin":Landroid/os/IInterface;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/app/INotificationSideChannel;

    if-eqz v2, :cond_1

    .line 34
    move-object v2, v1

    check-cast v2, Landroid/support/v4/app/INotificationSideChannel;

    move-object v0, v2

    goto :goto_0

    .line 36
    :cond_1
    new-instance v2, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroid/support/v4/app/INotificationSideChannel$Stub;
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub;
    move v1, p1

    .local v1, "code":I
    move-object/from16 v2, p2

    .local v2, "data":Landroid/os/Parcel;
    move-object/from16 v3, p3

    .local v3, "reply":Landroid/os/Parcel;
    move/from16 v4, p4

    .local v4, "flags":I
    move v9, v1

    sparse-switch v9, :sswitch_data_0

    .line 91
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    invoke-super {v9, v10, v11, v12, v13}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    move v0, v9

    .end local v0    # "this":Landroid/support/v4/app/INotificationSideChannel$Stub;
    :goto_0
    return v0

    .line 48
    .restart local v0    # "this":Landroid/support/v4/app/INotificationSideChannel$Stub;
    :sswitch_0
    move-object v9, v3

    const-string/jumbo v10, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 53
    :sswitch_1
    move-object v9, v2

    const-string/jumbo v10, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 57
    .local v5, "_arg0":Ljava/lang/String;
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v6, v9

    .line 59
    .local v6, "_arg1":I
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 61
    .local v7, "_arg2":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 62
    sget-object v9, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification;

    move-object v8, v9

    .line 67
    .local v8, "_arg3":Landroid/app/Notification;
    :goto_1
    move-object v9, v0

    move-object v10, v5

    move v11, v6

    move-object v12, v7

    move-object v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v4/app/INotificationSideChannel$Stub;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    .line 68
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 65
    .end local v8    # "_arg3":Landroid/app/Notification;
    :cond_0
    const/4 v9, 0x0

    move-object v8, v9

    .restart local v8    # "_arg3":Landroid/app/Notification;
    goto :goto_1

    .line 72
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/app/Notification;
    :sswitch_2
    move-object v9, v2

    const-string/jumbo v10, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 76
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v6, v9

    .line 78
    .restart local v6    # "_arg1":I
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 79
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v5

    move v11, v6

    move-object v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 84
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_3
    move-object v9, v2

    const-string/jumbo v10, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 87
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancelAll(Ljava/lang/String;)V

    .line 88
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
