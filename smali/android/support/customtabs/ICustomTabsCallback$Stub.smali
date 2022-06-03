.class public abstract Landroid/support/customtabs/ICustomTabsCallback$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsCallback.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsCallback"

.field static final TRANSACTION_extraCallback:I = 0x3

.field static final TRANSACTION_onMessageChannelReady:I = 0x4

.field static final TRANSACTION_onNavigationEvent:I = 0x2

.field static final TRANSACTION_onPostMessage:I = 0x5

.field static final TRANSACTION_onRelationshipValidationResult:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 19
    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v1, v2, v3}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "obj":Landroid/os/IBinder;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x0

    move-object v0, v2

    .line 34
    .end local v0    # "obj":Landroid/os/IBinder;
    .local v1, "iin":Landroid/os/IInterface;
    :goto_0
    return-object v0

    .line 30
    .end local v1    # "iin":Landroid/os/IInterface;
    .restart local v0    # "obj":Landroid/os/IBinder;
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "android.support.customtabs.ICustomTabsCallback"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 31
    .restart local v1    # "iin":Landroid/os/IInterface;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/customtabs/ICustomTabsCallback;

    if-eqz v2, :cond_1

    .line 32
    move-object v2, v1

    check-cast v2, Landroid/support/customtabs/ICustomTabsCallback;

    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsCallback$Stub;
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
    .line 42
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub;
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

    .line 137
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    invoke-super {v9, v10, v11, v12, v13}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    move v0, v9

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    :goto_0
    return v0

    .line 46
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    :sswitch_0
    move-object v9, v3

    const-string/jumbo v10, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 51
    :sswitch_1
    move-object v9, v2

    const-string/jumbo v10, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v5, v9

    .line 55
    .local v5, "_arg0":I
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 56
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v6, v9

    .line 61
    .local v6, "_arg1":Landroid/os/Bundle;
    :goto_1
    move-object v9, v0

    move v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 62
    move-object v9, v3

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 59
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v9, 0x0

    move-object v6, v9

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 67
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    move-object v9, v2

    const-string/jumbo v10, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 71
    .local v5, "_arg0":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 72
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v6, v9

    .line 77
    .restart local v6    # "_arg1":Landroid/os/Bundle;
    :goto_2
    move-object v9, v0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    move-object v9, v3

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 75
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v9, 0x0

    move-object v6, v9

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .line 83
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_3
    move-object v9, v2

    const-string/jumbo v10, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 86
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v5, v9

    .line 91
    .local v5, "_arg0":Landroid/os/Bundle;
    :goto_3
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->onMessageChannelReady(Landroid/os/Bundle;)V

    .line 92
    move-object v9, v3

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 89
    .end local v5    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v9, 0x0

    move-object v5, v9

    .restart local v5    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 97
    .end local v5    # "_arg0":Landroid/os/Bundle;
    :sswitch_4
    move-object v9, v2

    const-string/jumbo v10, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 101
    .local v5, "_arg0":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 102
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v6, v9

    .line 107
    .restart local v6    # "_arg1":Landroid/os/Bundle;
    :goto_4
    move-object v9, v0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    move-object v9, v3

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 105
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :cond_3
    const/4 v9, 0x0

    move-object v6, v9

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 113
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    move-object v9, v2

    const-string/jumbo v10, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v5, v9

    .line 117
    .local v5, "_arg0":I
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 118
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object v6, v9

    .line 124
    .local v6, "_arg1":Landroid/net/Uri;
    :goto_5
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_6
    move v7, v9

    .line 126
    .local v7, "_arg2":Z
    const/4 v9, 0x0

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 127
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v8, v9

    .line 132
    .local v8, "_arg3":Landroid/os/Bundle;
    :goto_7
    move-object v9, v0

    move v10, v5

    move-object v11, v6

    move v12, v7

    move-object v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 133
    move-object v9, v3

    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 121
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Landroid/os/Bundle;
    :cond_4
    const/4 v9, 0x0

    move-object v6, v9

    .restart local v6    # "_arg1":Landroid/net/Uri;
    goto :goto_5

    .line 124
    :cond_5
    const/4 v9, 0x0

    goto :goto_6

    .line 130
    .restart local v7    # "_arg2":Z
    :cond_6
    const/4 v9, 0x0

    move-object v8, v9

    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_7

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
