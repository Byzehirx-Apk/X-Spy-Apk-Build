.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    :goto_0
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 61
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransition;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1264
    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v1, p1

    .local v1, "sharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v2, p2

    .local v2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 647
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 648
    .local v4, "view":Landroid/view/View;
    move-object v5, v2

    move-object v6, v4

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 649
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 646
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 652
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1123
    move-object/from16 v0, p0

    .local v0, "transaction":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v1, p1

    .local v1, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object/from16 v2, p2

    .local v2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move/from16 v3, p3

    .local v3, "isPop":Z
    move/from16 v4, p4

    .local v4, "isReorderedTransaction":Z
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    move-object v5, v14

    .line 1124
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    move-object v14, v5

    if-nez v14, :cond_0

    .line 1125
    .line 1210
    :goto_0
    return-void

    .line 1127
    :cond_0
    move-object v14, v5

    iget v14, v14, Landroidx/fragment/app/Fragment;->mContainerId:I

    move v6, v14

    .line 1128
    .local v6, "containerId":I
    move v14, v6

    if-nez v14, :cond_1

    .line 1129
    goto :goto_0

    .line 1131
    :cond_1
    move v14, v3

    if-eqz v14, :cond_8

    sget-object v14, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    move-object v15, v1

    iget v15, v15, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    aget v14, v14, v15

    :goto_1
    move v7, v14

    .line 1132
    .local v7, "command":I
    const/4 v14, 0x0

    move v8, v14

    .line 1133
    .local v8, "setLastIn":Z
    const/4 v14, 0x0

    move v9, v14

    .line 1134
    .local v9, "wasRemoved":Z
    const/4 v14, 0x0

    move v10, v14

    .line 1135
    .local v10, "setFirstOut":Z
    const/4 v14, 0x0

    move v11, v14

    .line 1136
    .local v11, "wasAdded":Z
    move v14, v7

    packed-switch v14, :pswitch_data_0

    .line 1174
    :goto_2
    :pswitch_0
    move-object v14, v2

    move v15, v6

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v12, v14

    .line 1175
    .local v12, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move v14, v8

    if-eqz v14, :cond_2

    .line 1176
    move-object v14, v12

    move-object v15, v2

    move/from16 v16, v6

    .line 1177
    invoke-static/range {v14 .. v16}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    move-object v12, v14

    .line 1178
    move-object v14, v12

    move-object v15, v5

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1179
    move-object v14, v12

    move v15, v3

    iput-boolean v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1180
    move-object v14, v12

    move-object v15, v0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1182
    :cond_2
    move v14, v4

    if-nez v14, :cond_4

    move v14, v11

    if-eqz v14, :cond_4

    .line 1183
    move-object v14, v12

    if-eqz v14, :cond_3

    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object v15, v5

    if-ne v14, v15, :cond_3

    .line 1184
    move-object v14, v12

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1191
    :cond_3
    move-object v14, v0

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v13, v14

    .line 1192
    .local v13, "manager":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v14, v5

    iget v14, v14, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    move-object v14, v13

    iget v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v15, 0x1

    if-lt v14, v15, :cond_4

    move-object v14, v0

    iget-boolean v14, v14, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v14, :cond_4

    .line 1194
    move-object v14, v13

    move-object v15, v5

    invoke-virtual {v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1195
    move-object v14, v13

    move-object v15, v5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1198
    .end local v13    # "manager":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_4
    move v14, v10

    if-eqz v14, :cond_6

    move-object v14, v12

    if-eqz v14, :cond_5

    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v14, :cond_6

    .line 1199
    :cond_5
    move-object v14, v12

    move-object v15, v2

    move/from16 v16, v6

    .line 1200
    invoke-static/range {v14 .. v16}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    move-object v12, v14

    .line 1201
    move-object v14, v12

    move-object v15, v5

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1202
    move-object v14, v12

    move v15, v3

    iput-boolean v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1203
    move-object v14, v12

    move-object v15, v0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1206
    :cond_6
    move v14, v4

    if-nez v14, :cond_7

    move v14, v9

    if-eqz v14, :cond_7

    move-object v14, v12

    if-eqz v14, :cond_7

    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object v15, v5

    if-ne v14, v15, :cond_7

    .line 1208
    move-object v14, v12

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1210
    :cond_7
    goto/16 :goto_0

    .line 1131
    .end local v7    # "command":I
    .end local v8    # "setLastIn":Z
    .end local v9    # "wasRemoved":Z
    .end local v10    # "setFirstOut":Z
    .end local v11    # "wasAdded":Z
    .end local v12    # "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_8
    move-object v14, v1

    iget v14, v14, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    goto/16 :goto_1

    .line 1138
    .restart local v7    # "command":I
    .restart local v8    # "setLastIn":Z
    .restart local v9    # "wasRemoved":Z
    .restart local v10    # "setFirstOut":Z
    .restart local v11    # "wasAdded":Z
    :pswitch_1
    move v14, v4

    if-eqz v14, :cond_a

    .line 1139
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v14, :cond_9

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_9

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    :goto_3
    move v8, v14

    .line 1143
    :goto_4
    const/4 v14, 0x1

    move v11, v14

    .line 1144
    goto/16 :goto_2

    .line 1139
    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    .line 1141
    :cond_a
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    move v8, v14

    goto :goto_4

    .line 1147
    :pswitch_2
    move v14, v4

    if-eqz v14, :cond_b

    .line 1148
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    move v8, v14

    .line 1152
    :goto_5
    const/4 v14, 0x1

    move v11, v14

    .line 1153
    goto/16 :goto_2

    .line 1150
    :cond_b
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v14, :cond_c

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_c

    const/4 v14, 0x1

    :goto_6
    move v8, v14

    goto :goto_5

    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 1155
    :pswitch_3
    move v14, v4

    if-eqz v14, :cond_e

    .line 1156
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v14, :cond_d

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_d

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    :goto_7
    move v10, v14

    .line 1160
    :goto_8
    const/4 v14, 0x1

    move v9, v14

    .line 1161
    goto/16 :goto_2

    .line 1156
    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    .line 1158
    :cond_e
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_f

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_f

    const/4 v14, 0x1

    :goto_9
    move v10, v14

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 1164
    :pswitch_4
    move v14, v4

    if-eqz v14, :cond_11

    .line 1165
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v14, :cond_10

    move-object v14, v5

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v14, :cond_10

    move-object v14, v5

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1166
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_10

    move-object v14, v5

    iget v14, v14, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_10

    const/4 v14, 0x1

    :goto_a
    move v10, v14

    .line 1171
    :goto_b
    const/4 v14, 0x1

    move v9, v14

    goto/16 :goto_2

    .line 1166
    :cond_10
    const/4 v14, 0x0

    goto :goto_a

    .line 1169
    :cond_11
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_12

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_12

    const/4 v14, 0x1

    :goto_c
    move v10, v14

    goto :goto_b

    :cond_12
    const/4 v14, 0x0

    goto :goto_c

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1075
    move-object v0, p0

    .local v0, "transaction":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v2, p2

    .local v2, "isReordered":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1076
    .local v3, "numOps":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "opNum":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 1077
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v5, v6

    .line 1078
    .local v5, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1076
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1080
    .end local v5    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    move/from16 v2, p0

    .local v2, "containerId":I
    move-object/from16 v3, p1

    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object/from16 v4, p2

    .local v4, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v5, p3

    .local v5, "startIndex":I
    move/from16 v6, p4

    .local v6, "endIndex":I
    new-instance v18, Landroidx/collection/ArrayMap;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v7, v18

    .line 162
    .local v7, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v8, v18

    .local v8, "recordNum":I
    :goto_0
    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 163
    move-object/from16 v18, v3

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v9, v18

    .line 164
    .local v9, "record":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v18, v9

    move/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 165
    .line 162
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 167
    :cond_1
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v10, v18

    .line 168
    .local v10, "isPop":Z
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 169
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v11, v18

    .line 172
    .local v11, "numSharedElements":I
    move/from16 v18, v10

    if-eqz v18, :cond_2

    .line 173
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 174
    .local v13, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 179
    .local v12, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "i":I
    :goto_2
    move/from16 v18, v14

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 180
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v15, v18

    .line 181
    .local v15, "sourceName":Ljava/lang/String;
    move-object/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v16, v18

    .line 182
    .local v16, "targetName":Ljava/lang/String;
    move-object/from16 v18, v7

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, v18

    .line 183
    .local v17, "previousTarget":Ljava/lang/String;
    move-object/from16 v18, v17

    if-eqz v18, :cond_3

    .line 184
    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 179
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 176
    .end local v12    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v15    # "sourceName":Ljava/lang/String;
    .end local v16    # "targetName":Ljava/lang/String;
    .end local v17    # "previousTarget":Ljava/lang/String;
    :cond_2
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 177
    .restart local v12    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .restart local v13    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 186
    .restart local v14    # "i":I
    .restart local v15    # "sourceName":Ljava/lang/String;
    .restart local v16    # "targetName":Ljava/lang/String;
    .restart local v17    # "previousTarget":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_3

    .line 191
    .end local v9    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v10    # "isPop":Z
    .end local v11    # "numSharedElements":I
    .end local v12    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v15    # "sourceName":Ljava/lang/String;
    .end local v16    # "targetName":Ljava/lang/String;
    .end local v17    # "previousTarget":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v7

    move-object/from16 v2, v18

    .end local v2    # "containerId":I
    return-object v2
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "transaction":Landroidx/fragment/app/BackStackRecord;
    move-object v1, p1

    .local v1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v2, p2

    .local v2, "isReordered":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1093
    .line 1100
    :goto_0
    return-void

    .line 1095
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1096
    .local v3, "numOps":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "opNum":I
    :goto_1
    move v6, v4

    if-ltz v6, :cond_1

    .line 1097
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v5, v6

    .line 1098
    .local v5, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1096
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1100
    .end local v5    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_1
    goto :goto_0
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v1, p1

    .local v1, "outFragment":Landroidx/fragment/app/Fragment;
    move/from16 v2, p2

    .local v2, "isPop":Z
    move-object/from16 v3, p3

    .local v3, "sharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move/from16 v4, p4

    .local v4, "isStart":Z
    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v1

    .line 979
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v10

    .line 980
    :goto_0
    move-object v5, v10

    .line 981
    .local v5, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    move-object v10, v5

    if-eqz v10, :cond_3

    .line 982
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 983
    .local v6, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 984
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v3

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :goto_1
    move v8, v10

    .line 985
    .local v8, "count":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_2
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_2

    .line 986
    move-object v10, v7

    move-object v11, v3

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 987
    move-object v10, v6

    move-object v11, v3

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 985
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 979
    .end local v5    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v6    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_0
    move-object v10, v0

    .line 980
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v10

    goto :goto_0

    .line 984
    .restart local v5    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .restart local v6    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Landroidx/collection/ArrayMap;->size()I

    move-result v10

    goto :goto_1

    .line 989
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    :cond_2
    move v10, v4

    if-eqz v10, :cond_4

    .line 990
    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 995
    .end local v6    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_3
    :goto_3
    return-void

    .line 992
    .restart local v6    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    :cond_4
    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "transitions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    .local v3, "size":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 470
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 471
    const/4 v4, 0x0

    move v0, v4

    .line 474
    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_1
    return v0

    .line 469
    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    move-object/from16 v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v1, p1

    .local v1, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object v14, v3

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object v4, v14

    .line 839
    .local v4, "inFragment":Landroidx/fragment/app/Fragment;
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v14

    move-object v5, v14

    .line 840
    .local v5, "fragmentView":Landroid/view/View;
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v2

    if-eqz v14, :cond_0

    move-object v14, v5

    if-nez v14, :cond_1

    .line 841
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->clear()V

    .line 842
    const/4 v14, 0x0

    move-object v0, v14

    .line 882
    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v0

    .line 844
    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_1
    new-instance v14, Landroidx/collection/ArrayMap;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v6, v14

    .line 845
    .local v6, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v14, v0

    move-object v15, v6

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 849
    move-object v14, v3

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v9, v14

    .line 850
    .local v9, "inTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v14, v3

    iget-boolean v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v14, :cond_4

    .line 851
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v14

    move-object v7, v14

    .line 852
    .local v7, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    move-object v14, v9

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v8, v14

    .line 858
    .local v8, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object v14, v8

    if-eqz v14, :cond_2

    .line 859
    move-object v14, v6

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v14

    .line 860
    move-object v14, v6

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v14

    .line 862
    :cond_2
    move-object v14, v7

    if-eqz v14, :cond_7

    .line 863
    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 864
    move-object v14, v8

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v10, v14

    .local v10, "i":I
    :goto_2
    move v14, v10

    if-ltz v14, :cond_6

    .line 865
    move-object v14, v8

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v11, v14

    .line 866
    .local v11, "name":Ljava/lang/String;
    move-object v14, v6

    move-object v15, v11

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v12, v14

    .line 867
    .local v12, "view":Landroid/view/View;
    move-object v14, v12

    if-nez v14, :cond_5

    .line 868
    move-object v14, v1

    move-object v15, v11

    invoke-static {v14, v15}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 869
    .local v13, "key":Ljava/lang/String;
    move-object v14, v13

    if-eqz v14, :cond_3

    .line 870
    move-object v14, v1

    move-object v15, v13

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 872
    .line 864
    .end local v13    # "key":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 854
    .end local v7    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v8    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "view":Landroid/view/View;
    :cond_4
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v14

    move-object v7, v14

    .line 855
    .restart local v7    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    move-object v14, v9

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v14

    .restart local v8    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 872
    .restart local v10    # "i":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "view":Landroid/view/View;
    :cond_5
    move-object v14, v11

    move-object v15, v12

    invoke-static {v15}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 873
    move-object v14, v1

    move-object v15, v11

    invoke-static {v14, v15}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 874
    .restart local v13    # "key":Ljava/lang/String;
    move-object v14, v13

    if-eqz v14, :cond_3

    .line 875
    move-object v14, v1

    move-object v15, v13

    move-object/from16 v16, v12

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    .line 864
    .line 882
    .end local v10    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "key":Ljava/lang/String;
    :cond_6
    :goto_4
    move-object v14, v6

    move-object v0, v14

    goto/16 :goto_0

    .line 880
    :cond_7
    move-object v14, v1

    move-object v15, v6

    invoke-static {v14, v15}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    goto :goto_4
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    move-object/from16 v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v1, p1

    .local v1, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object v13, v2

    if-nez v13, :cond_1

    .line 783
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->clear()V

    .line 784
    const/4 v13, 0x0

    move-object v0, v13

    .line 817
    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v0

    .line 786
    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_1
    move-object v13, v3

    iget-object v13, v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object v4, v13

    .line 787
    .local v4, "outFragment":Landroidx/fragment/app/Fragment;
    new-instance v13, Landroidx/collection/ArrayMap;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v5, v13

    .line 788
    .local v5, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v13, v0

    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 792
    move-object v13, v3

    iget-object v13, v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v8, v13

    .line 793
    .local v8, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v13, v3

    iget-boolean v13, v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v13, :cond_3

    .line 794
    move-object v13, v4

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v13

    move-object v6, v13

    .line 795
    .local v6, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    move-object v13, v8

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v13

    .line 801
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v13

    .line 802
    move-object v13, v6

    if-eqz v13, :cond_6

    .line 803
    move-object v13, v6

    move-object v14, v7

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 804
    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v9, v13

    .local v9, "i":I
    :goto_2
    move v13, v9

    if-ltz v13, :cond_5

    .line 805
    move-object v13, v7

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v10, v13

    .line 806
    .local v10, "name":Ljava/lang/String;
    move-object v13, v5

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object v11, v13

    .line 807
    .local v11, "view":Landroid/view/View;
    move-object v13, v11

    if-nez v13, :cond_4

    .line 808
    move-object v13, v1

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 804
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 797
    .end local v6    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    move-object v13, v4

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v13

    move-object v6, v13

    .line 798
    .restart local v6    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    move-object v13, v8

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v7, v13

    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 809
    .restart local v9    # "i":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "view":Landroid/view/View;
    :cond_4
    move-object v13, v10

    move-object v14, v11

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 810
    move-object v13, v1

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v12, v13

    .line 811
    .local v12, "targetValue":Ljava/lang/String;
    move-object v13, v1

    move-object v14, v11

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 804
    .line 817
    .end local v9    # "i":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "targetValue":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object v13, v5

    move-object v0, v13

    goto/16 :goto_0

    .line 815
    :cond_6
    move-object v13, v1

    move-object v14, v5

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v13

    goto :goto_4
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 10

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "outFragment":Landroidx/fragment/app/Fragment;
    move-object v1, p1

    .local v1, "inFragment":Landroidx/fragment/app/Fragment;
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 424
    .local v2, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v6, v0

    if-eqz v6, :cond_2

    .line 425
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 426
    .local v3, "exitTransition":Ljava/lang/Object;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 427
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 429
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 430
    .local v4, "returnTransition":Ljava/lang/Object;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 431
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 433
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 434
    .local v5, "sharedReturnTransition":Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 435
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 438
    .end local v3    # "exitTransition":Ljava/lang/Object;
    .end local v4    # "returnTransition":Ljava/lang/Object;
    .end local v5    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_2
    move-object v6, v1

    if-eqz v6, :cond_5

    .line 439
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 440
    .local v3, "enterTransition":Ljava/lang/Object;
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 441
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 443
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 444
    .local v4, "reenterTransition":Ljava/lang/Object;
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 445
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 447
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 448
    .local v5, "sharedEnterTransition":Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_5

    .line 449
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 452
    .end local v3    # "enterTransition":Ljava/lang/Object;
    .end local v4    # "reenterTransition":Ljava/lang/Object;
    .end local v5    # "sharedEnterTransition":Ljava/lang/Object;
    :cond_5
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 453
    const/4 v6, 0x0

    move-object v0, v6

    .line 465
    .end local v0    # "outFragment":Landroidx/fragment/app/Fragment;
    :goto_0
    return-object v0

    .line 456
    .restart local v0    # "outFragment":Landroidx/fragment/app/Fragment;
    :cond_6
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v6, :cond_7

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 457
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v0, v6

    goto :goto_0

    .line 459
    :cond_7
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v6, :cond_8

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 460
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v0, v6

    goto :goto_0

    .line 462
    :cond_8
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v6, :cond_9

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v6, :cond_a

    .line 463
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Invalid Transition types"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    :cond_a
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, p3

    .local v3, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v4, p4

    .local v4, "nonExistentView":Landroid/view/View;
    const/4 v7, 0x0

    move-object v5, v7

    .line 1002
    .local v5, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 1003
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    .line 1004
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1005
    .local v6, "root":Landroid/view/View;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1006
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1008
    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 1009
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .line 1011
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1012
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1013
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1016
    .end local v6    # "root":Landroid/view/View;
    :cond_2
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 689
    move-object/from16 v1, p0

    .local v1, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v2, p1

    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v3, p2

    .local v3, "nonExistentView":Landroid/view/View;
    move-object/from16 v4, p3

    .local v4, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v5, p4

    .local v5, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object/from16 v6, p5

    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v7, p6

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, p7

    .local v8, "enterTransition":Ljava/lang/Object;
    move-object/from16 v9, p8

    .local v9, "exitTransition":Ljava/lang/Object;
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 690
    .local v10, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v18, v0

    move-object/from16 v11, v18

    .line 692
    .local v11, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v18, v10

    if-eqz v18, :cond_0

    move-object/from16 v18, v11

    if-nez v18, :cond_1

    .line 693
    :cond_0
    const/16 v18, 0x0

    move-object/from16 v1, v18

    .line 762
    .end local v1    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v1

    .line 696
    .restart local v1    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    move/from16 v12, v18

    .line 697
    .local v12, "inIsPop":Z
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    .line 698
    :goto_1
    move-object/from16 v13, v18

    .line 700
    .local v13, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    invoke-static/range {v18 .. v21}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v18

    move-object/from16 v14, v18

    .line 703
    .local v14, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 704
    const/16 v18, 0x0

    move-object/from16 v13, v18

    .line 709
    .end local v13    # "sharedElementTransition":Ljava/lang/Object;
    :goto_2
    move-object/from16 v18, v8

    if-nez v18, :cond_4

    move-object/from16 v18, v9

    if-nez v18, :cond_4

    move-object/from16 v18, v13

    if-nez v18, :cond_4

    .line 711
    const/16 v18, 0x0

    move-object/from16 v1, v18

    goto :goto_0

    .line 697
    .end local v14    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_2
    move-object/from16 v18, v1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    .line 698
    invoke-static/range {v18 .. v21}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1

    .line 706
    .restart local v13    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v14    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v18

    goto :goto_2

    .line 714
    .end local v13    # "sharedElementTransition":Ljava/lang/Object;
    :cond_4
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v21, v14

    const/16 v22, 0x1

    invoke-static/range {v18 .. v22}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 717
    move-object/from16 v18, v13

    if-eqz v18, :cond_6

    .line 718
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v15, v18

    .line 719
    .local v15, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v18, v1

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v18 .. v21}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 721
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v18, v0

    move/from16 v16, v18

    .line 722
    .local v16, "outIsPop":Z
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v18, v0

    move-object/from16 v17, v18

    .line 723
    .local v17, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v18, v1

    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v14

    move/from16 v22, v16

    move-object/from16 v23, v17

    invoke-static/range {v18 .. v23}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 725
    move-object/from16 v18, v8

    if-eqz v18, :cond_5

    .line 726
    move-object/from16 v18, v1

    move-object/from16 v19, v8

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 728
    .line 733
    .end local v16    # "outIsPop":Z
    .end local v17    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    :cond_5
    :goto_3
    move-object/from16 v18, v13

    move-object/from16 v16, v18

    .line 734
    .local v16, "finalSharedElementTransition":Ljava/lang/Object;
    move-object/from16 v18, v2

    new-instance v19, Landroidx/fragment/app/FragmentTransition$4;

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    move-object/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v23, v16

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v3

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v30, v6

    move-object/from16 v31, v8

    move-object/from16 v32, v15

    invoke-direct/range {v20 .. v32}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static/range {v18 .. v19}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v18

    .line 762
    move-object/from16 v18, v13

    move-object/from16 v1, v18

    goto/16 :goto_0

    .line 729
    .end local v15    # "inEpicenter":Landroid/graphics/Rect;
    .end local v16    # "finalSharedElementTransition":Ljava/lang/Object;
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v15, v18

    .restart local v15    # "inEpicenter":Landroid/graphics/Rect;
    goto :goto_3
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 560
    move-object/from16 v1, p0

    .local v1, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v2, p1

    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v3, p2

    .local v3, "nonExistentView":Landroid/view/View;
    move-object/from16 v4, p3

    .local v4, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v5, p4

    .local v5, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object/from16 v6, p5

    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v7, p6

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, p7

    .local v8, "enterTransition":Ljava/lang/Object;
    move-object/from16 v9, p8

    .local v9, "exitTransition":Ljava/lang/Object;
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 561
    .local v10, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 562
    .local v11, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v20, v10

    if-eqz v20, :cond_0

    .line 563
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_0
    move-object/from16 v20, v10

    if-eqz v20, :cond_1

    move-object/from16 v20, v11

    if-nez v20, :cond_2

    .line 566
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v1, v20

    .line 632
    .end local v1    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v1

    .line 569
    .restart local v1    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_2
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v20, v0

    move/from16 v12, v20

    .line 570
    .local v12, "inIsPop":Z
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    .line 571
    :goto_1
    move-object/from16 v13, v20

    .line 573
    .local v13, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v20

    move-object/from16 v14, v20

    .line 576
    .local v14, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v20

    move-object/from16 v15, v20

    .line 579
    .local v15, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 580
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 581
    move-object/from16 v20, v14

    if-eqz v20, :cond_3

    .line 582
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->clear()V

    .line 584
    :cond_3
    move-object/from16 v20, v15

    if-eqz v20, :cond_4

    .line 585
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->clear()V

    .line 594
    .end local v13    # "sharedElementTransition":Ljava/lang/Object;
    :cond_4
    :goto_2
    move-object/from16 v20, v8

    if-nez v20, :cond_7

    move-object/from16 v20, v9

    if-nez v20, :cond_7

    move-object/from16 v20, v13

    if-nez v20, :cond_7

    .line 596
    const/16 v20, 0x0

    move-object/from16 v1, v20

    goto :goto_0

    .line 570
    .end local v14    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v15    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    .line 571
    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    goto :goto_1

    .line 588
    .restart local v13    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v14    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v15    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_6
    move-object/from16 v20, v6

    move-object/from16 v21, v14

    move-object/from16 v22, v4

    .line 589
    invoke-virtual/range {v22 .. v22}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v22

    .line 588
    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 590
    move-object/from16 v20, v7

    move-object/from16 v21, v15

    move-object/from16 v22, v4

    .line 591
    invoke-virtual/range {v22 .. v22}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v22

    .line 590
    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    goto :goto_2

    .line 599
    .end local v13    # "sharedElementTransition":Ljava/lang/Object;
    :cond_7
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v24, 0x1

    invoke-static/range {v20 .. v24}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 603
    move-object/from16 v20, v13

    if-eqz v20, :cond_9

    .line 604
    move-object/from16 v20, v7

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 605
    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    invoke-virtual/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 607
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    move/from16 v18, v20

    .line 608
    .local v18, "outIsPop":Z
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v20, v0

    move-object/from16 v19, v20

    .line 609
    .local v19, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    move/from16 v24, v18

    move-object/from16 v25, v19

    invoke-static/range {v20 .. v25}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 611
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v16, v20

    .line 612
    .local v16, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v20, v15

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move/from16 v23, v12

    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v17, v20

    .line 614
    .local v17, "epicenterView":Landroid/view/View;
    move-object/from16 v20, v17

    if-eqz v20, :cond_8

    .line 615
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 617
    .line 622
    .end local v18    # "outIsPop":Z
    .end local v19    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    :cond_8
    :goto_3
    move-object/from16 v20, v2

    new-instance v21, Landroidx/fragment/app/FragmentTransition$3;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v26, v15

    move-object/from16 v27, v17

    move-object/from16 v28, v1

    move-object/from16 v29, v16

    invoke-direct/range {v22 .. v29}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    invoke-static/range {v20 .. v21}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v20

    .line 632
    move-object/from16 v20, v13

    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 618
    .end local v16    # "epicenter":Landroid/graphics/Rect;
    .end local v17    # "epicenterView":Landroid/view/View;
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v16, v20

    .line 619
    .restart local v16    # "epicenter":Landroid/graphics/Rect;
    const/16 v20, 0x0

    move-object/from16 v17, v20

    .restart local v17    # "epicenterView":Landroid/view/View;
    goto :goto_3
.end method

.method private static configureTransitionsOrdered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    move-object/from16 v1, p0

    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManagerImpl;
    move/from16 v2, p1

    .local v2, "containerId":I
    move-object/from16 v3, p2

    .local v3, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object/from16 v4, p3

    .local v4, "nonExistentView":Landroid/view/View;
    move-object/from16 v5, p4

    .local v5, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 311
    .local v6, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 312
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v20, v0

    move/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v6, v20

    .line 314
    :cond_0
    move-object/from16 v20, v6

    if-nez v20, :cond_1

    .line 315
    .line 367
    :goto_0
    return-void

    .line 317
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 318
    .local v7, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 319
    .local v8, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    invoke-static/range {v20 .. v21}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v20

    move-object/from16 v9, v20

    .line 320
    .local v9, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v20, v9

    if-nez v20, :cond_2

    .line 321
    goto :goto_0

    .line 323
    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v20, v0

    move/from16 v10, v20

    .line 324
    .local v10, "inIsPop":Z
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    move/from16 v11, v20

    .line 326
    .local v11, "outIsPop":Z
    move-object/from16 v20, v9

    move-object/from16 v21, v7

    move/from16 v22, v10

    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v12, v20

    .line 327
    .local v12, "enterTransition":Ljava/lang/Object;
    move-object/from16 v20, v9

    move-object/from16 v21, v8

    move/from16 v22, v11

    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 329
    .local v13, "exitTransition":Ljava/lang/Object;
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v20

    .line 330
    .local v14, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v20

    .line 332
    .local v15, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-static/range {v20 .. v28}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v16, v20

    .line 336
    .local v16, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v20, v12

    if-nez v20, :cond_3

    move-object/from16 v20, v16

    if-nez v20, :cond_3

    move-object/from16 v20, v13

    if-nez v20, :cond_3

    .line 338
    goto/16 :goto_0

    .line 341
    :cond_3
    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v22, v8

    move-object/from16 v23, v14

    move-object/from16 v24, v4

    invoke-static/range {v20 .. v24}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v17, v20

    .line 344
    .local v17, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v20, v17

    if-eqz v20, :cond_4

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 345
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 350
    .end local v13    # "exitTransition":Ljava/lang/Object;
    :cond_5
    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 352
    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v16

    move-object/from16 v24, v7

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v25, v0

    invoke-static/range {v20 .. v25}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 355
    .local v18, "transition":Ljava/lang/Object;
    move-object/from16 v20, v18

    if-eqz v20, :cond_6

    .line 356
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v20

    .line 357
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v20, v9

    move-object/from16 v21, v18

    move-object/from16 v22, v12

    move-object/from16 v23, v19

    move-object/from16 v24, v13

    move-object/from16 v25, v17

    move-object/from16 v26, v16

    move-object/from16 v27, v15

    invoke-virtual/range {v20 .. v27}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 360
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v4

    move-object/from16 v24, v15

    move-object/from16 v25, v12

    move-object/from16 v26, v19

    move-object/from16 v27, v13

    move-object/from16 v28, v17

    invoke-static/range {v20 .. v28}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 362
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v15

    move-object/from16 v23, v5

    invoke-virtual/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 364
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 365
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v15

    move-object/from16 v23, v5

    invoke-virtual/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 367
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    goto/16 :goto_0
.end method

.method private static configureTransitionsReordered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    move-object/from16 v1, p0

    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManagerImpl;
    move/from16 v2, p1

    .local v2, "containerId":I
    move-object/from16 v3, p2

    .local v3, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object/from16 v4, p3

    .local v4, "nonExistentView":Landroid/view/View;
    move-object/from16 v5, p4

    .local v5, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x0

    move-object/from16 v6, v21

    .line 213
    .local v6, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 214
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v21, v0

    move/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v6, v21

    .line 216
    :cond_0
    move-object/from16 v21, v6

    if-nez v21, :cond_1

    .line 217
    .line 267
    :goto_0
    return-void

    .line 219
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v21, v0

    move-object/from16 v7, v21

    .line 220
    .local v7, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v21, v0

    move-object/from16 v8, v21

    .line 221
    .local v8, "outFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v21, v8

    move-object/from16 v22, v7

    invoke-static/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v21

    move-object/from16 v9, v21

    .line 222
    .local v9, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v21, v9

    if-nez v21, :cond_2

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v21, v0

    move/from16 v10, v21

    .line 226
    .local v10, "inIsPop":Z
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v21, v0

    move/from16 v11, v21

    .line 228
    .local v11, "outIsPop":Z
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v21

    .line 229
    .local v12, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v21

    .line 230
    .local v13, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v21, v9

    move-object/from16 v22, v7

    move/from16 v23, v10

    invoke-static/range {v21 .. v23}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 231
    .local v14, "enterTransition":Ljava/lang/Object;
    move-object/from16 v21, v9

    move-object/from16 v22, v8

    move/from16 v23, v11

    invoke-static/range {v21 .. v23}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    .line 233
    .local v15, "exitTransition":Ljava/lang/Object;
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v13

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-static/range {v21 .. v29}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v16, v21

    .line 237
    .local v16, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v21, v14

    if-nez v21, :cond_3

    move-object/from16 v21, v16

    if-nez v21, :cond_3

    move-object/from16 v21, v15

    if-nez v21, :cond_3

    .line 239
    goto/16 :goto_0

    .line 242
    :cond_3
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v24, v13

    move-object/from16 v25, v4

    invoke-static/range {v21 .. v25}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v17, v21

    .line 245
    .local v17, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v21, v9

    move-object/from16 v22, v14

    move-object/from16 v23, v7

    move-object/from16 v24, v12

    move-object/from16 v25, v4

    invoke-static/range {v21 .. v25}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v18, v21

    .line 248
    .local v18, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v21, v18

    const/16 v22, 0x4

    invoke-static/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 250
    move-object/from16 v21, v9

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v7

    move/from16 v26, v10

    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v19, v21

    .line 253
    .local v19, "transition":Ljava/lang/Object;
    move-object/from16 v21, v19

    if-eqz v21, :cond_4

    .line 254
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v24, v17

    invoke-static/range {v21 .. v24}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 255
    move-object/from16 v21, v9

    move-object/from16 v22, v12

    .line 256
    invoke-virtual/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v20, v21

    .line 257
    .local v20, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v21, v9

    move-object/from16 v22, v19

    move-object/from16 v23, v14

    move-object/from16 v24, v18

    move-object/from16 v25, v15

    move-object/from16 v26, v17

    move-object/from16 v27, v16

    move-object/from16 v28, v12

    invoke-virtual/range {v21 .. v28}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 260
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 261
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v13

    move-object/from16 v24, v12

    move-object/from16 v25, v20

    move-object/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 263
    move-object/from16 v21, v18

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 264
    move-object/from16 v21, v9

    move-object/from16 v22, v16

    move-object/from16 v23, v13

    move-object/from16 v24, v12

    invoke-virtual/range {v21 .. v24}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 267
    .end local v20    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    goto/16 :goto_0
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .prologue
    .line 1220
    move-object v0, p0

    .local v0, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object v1, p1

    .local v1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v2, p2

    .local v2, "containerId":I
    move-object v3, v0

    if-nez v3, :cond_0

    .line 1221
    new-instance v3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object v0, v3

    .line 1222
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1224
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    return-object v0
.end method

.method private static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    move v2, v4

    .line 890
    .local v2, "numElements":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 891
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 892
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 895
    .end local v0    # "map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 890
    .restart local v0    # "map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 895
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "inFragment":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "isPop":Z
    move-object v3, v1

    if-nez v3, :cond_0

    .line 506
    const/4 v3, 0x0

    move-object v0, v3

    .line 508
    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v0

    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_0
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 509
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v4

    .line 508
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 509
    :cond_1
    move-object v4, v1

    .line 510
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "outFragment":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "isPop":Z
    move-object v3, v1

    if-nez v3, :cond_0

    .line 519
    const/4 v3, 0x0

    move-object v0, v3

    .line 521
    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v0

    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_0
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 522
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v4

    .line 521
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 522
    :cond_1
    move-object v4, v1

    .line 523
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v1, p1

    .local v1, "fragments":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object v2, p2

    .local v2, "enterTransition":Ljava/lang/Object;
    move v3, p3

    .local v3, "inIsPop":Z
    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v4, v6

    .line 912
    .local v4, "inTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 915
    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 916
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 917
    :goto_0
    move-object v5, v6

    .line 918
    .local v5, "targetName":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v0, v6

    .line 920
    .end local v0    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v5    # "targetName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 916
    .restart local v0    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 917
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 920
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "inFragment":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "outFragment":Landroidx/fragment/app/Fragment;
    move v3, p3

    .local v3, "isPop":Z
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 492
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 497
    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_0
    return-object v0

    .line 494
    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_1
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 495
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v6

    .line 494
    :goto_1
    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 497
    .local v4, "transition":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 495
    .end local v4    # "transition":Ljava/lang/Object;
    :cond_2
    move-object v6, v1

    .line 496
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 1040
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "enterTransition":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "exitTransition":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "inFragment":Landroidx/fragment/app/Fragment;
    move/from16 v5, p5

    .local v5, "isPop":Z
    const/4 v8, 0x1

    move v6, v8

    .line 1041
    .local v6, "overlap":Z
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v4

    if-eqz v8, :cond_0

    .line 1042
    move v8, v5

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v8

    .line 1043
    :goto_0
    move v6, v8

    .line 1051
    :cond_0
    move v8, v6

    if-eqz v8, :cond_2

    .line 1053
    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 1061
    .local v7, "transition":Ljava/lang/Object;
    :goto_1
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    return-object v0

    .line 1042
    .end local v7    # "transition":Ljava/lang/Object;
    .restart local v0    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_1
    move-object v8, v4

    .line 1043
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v8

    goto :goto_0

    .line 1058
    :cond_2
    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .restart local v7    # "transition":Ljava/lang/Object;
    goto :goto_1
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "exitTransition":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "exitingFragment":Landroidx/fragment/app/Fragment;
    move-object v3, p3

    .local v3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v5, :cond_0

    .line 279
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 280
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 281
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    move-object v8, v3

    .line 280
    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 282
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v4, v5

    .line 283
    .local v4, "container":Landroid/view/ViewGroup;
    move-object v5, v4

    new-instance v6, Landroidx/fragment/app/FragmentTransition$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v5

    .line 290
    .end local v4    # "container":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    .prologue
    .line 66
    :try_start_0
    const-string/jumbo v1, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 68
    .local v0, "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 72
    .end local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    :goto_0
    return-object v0

    .line 69
    .restart local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 72
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "namedViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 957
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 958
    .local v3, "targetName":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 959
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 956
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 962
    .end local v3    # "targetName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    move-object/from16 v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "inFragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v3, p3

    .local v3, "nonExistentView":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v5, p5

    .local v5, "enterTransition":Ljava/lang/Object;
    move-object/from16 v6, p6

    .local v6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v7, p7

    .local v7, "exitTransition":Ljava/lang/Object;
    move-object/from16 v8, p8

    .local v8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v1

    new-instance v10, Landroidx/fragment/app/FragmentTransition$2;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v5

    move-object v13, v0

    move-object v14, v3

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    invoke-direct/range {v11 .. v19}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v9

    .line 415
    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "sharedElementTransition":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "exitTransition":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move v4, p4

    .local v4, "outIsPop":Z
    move-object/from16 v5, p5

    .local v5, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 936
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 937
    move v8, v4

    if-eqz v8, :cond_1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v9, 0x0

    .line 938
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 939
    :goto_0
    move-object v6, v8

    .line 940
    .local v6, "sourceName":Ljava/lang/String;
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 941
    .local v7, "outEpicenterView":Landroid/view/View;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 943
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 944
    move-object v8, v0

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 947
    .end local v6    # "sourceName":Ljava/lang/String;
    .end local v7    # "outEpicenterView":Landroid/view/View;
    :cond_0
    return-void

    .line 938
    :cond_1
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    const/4 v9, 0x0

    .line 939
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v1, p1

    .local v1, "visibility":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 1025
    .line 1031
    :goto_0
    return-void

    .line 1027
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_1

    .line 1028
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 1029
    .local v3, "view":Landroid/view/View;
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1031
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    goto :goto_0
.end method

.method static startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object/from16 v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v3, p3

    .local v3, "startIndex":I
    move/from16 v4, p4

    .local v4, "endIndex":I
    move/from16 v5, p5

    .local v5, "isReordered":Z
    move-object v13, v0

    iget v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_0

    .line 106
    .line 141
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v13, Landroid/util/SparseArray;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v13

    .line 111
    .local v6, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v13, v3

    move v7, v13

    .local v7, "i":I
    :goto_1
    move v13, v7

    move v14, v4

    if-ge v13, v14, :cond_2

    .line 112
    move-object v13, v1

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/BackStackRecord;

    move-object v8, v13

    .line 113
    .local v8, "record":Landroidx/fragment/app/BackStackRecord;
    move-object v13, v2

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move v9, v13

    .line 114
    .local v9, "isPop":Z
    move v13, v9

    if-eqz v13, :cond_1

    .line 115
    move-object v13, v8

    move-object v14, v6

    move v15, v5

    invoke-static {v13, v14, v15}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 111
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 117
    :cond_1
    move-object v13, v8

    move-object v14, v6

    move v15, v5

    invoke-static {v13, v14, v15}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_2

    .line 121
    .end local v8    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v9    # "isPop":Z
    :cond_2
    move-object v13, v6

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_4

    .line 122
    new-instance v13, Landroid/view/View;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v15}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v7, v13

    .line 123
    .local v7, "nonExistentView":Landroid/view/View;
    move-object v13, v6

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v8, v13

    .line 124
    .local v8, "numContainers":I
    const/4 v13, 0x0

    move v9, v13

    .local v9, "i":I
    :goto_3
    move v13, v9

    move v14, v8

    if-ge v13, v14, :cond_4

    .line 125
    move-object v13, v6

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move v10, v13

    .line 126
    .local v10, "containerId":I
    move v13, v10

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v13 .. v17}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v13

    move-object v11, v13

    .line 129
    .local v11, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v6

    move v14, v9

    .line 130
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v12, v13

    .line 132
    .local v12, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move v13, v5

    if-eqz v13, :cond_3

    .line 133
    move-object v13, v0

    move v14, v10

    move-object v15, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v17}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V

    .line 124
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 136
    :cond_3
    move-object v13, v0

    move v14, v10

    move-object v15, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v17}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V

    goto :goto_4

    .line 141
    .end local v7    # "nonExistentView":Landroid/view/View;
    .end local v8    # "numContainers":I
    .end local v9    # "i":I
    .end local v10    # "containerId":I
    .end local v11    # "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_4
    goto/16 :goto_0
.end method

.method static supportsTransition()Z
    .locals 1

    .prologue
    .line 1103
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
