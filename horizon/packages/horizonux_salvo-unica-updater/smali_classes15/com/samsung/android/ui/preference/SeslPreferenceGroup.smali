.class public abstract Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "SeslPreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslPreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdRecycleCache:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    .line 35
    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mCurrentPreferenceOrder:I

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 40
    new-instance v1, Lcom/samsung/android/ui/preference/SeslPreferenceGroup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup$1;-><init>(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 51
    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslPreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 52
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-static {v1, v0, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    .line 53
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)Landroidx/collection/SimpleArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    return-object v0
.end method

.method private removePreferenceInt(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 5
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onPrepareForRemoval()V

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getParent()Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->assignParent(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, "success":Z
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onDetached()V

    .line 154
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v0

    .line 155
    .end local v0    # "success":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->addPreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    .line 70
    return-void
.end method

.method public addPreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 7
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 82
    return v1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_1

    .line 87
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->setOrder(I)V

    .line 90
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    if-eqz v0, :cond_2

    .line 91
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, "insertionIndex":I
    if-gez v0, :cond_3

    .line 97
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 100
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->onPrepareAddPreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 101
    const/4 v1, 0x0

    return v1

    .line 104
    :cond_4
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceManager()Lcom/samsung/android/ui/preference/PreferenceManager;

    move-result-object v2

    .line 109
    .local v2, "preferenceManager":Lcom/samsung/android/ui/preference/PreferenceManager;
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    iget-object v4, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 113
    .local v4, "id":J
    iget-object v6, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v4    # "id":J
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/PreferenceManager;->getNextId()J

    move-result-wide v4

    .line 117
    .restart local v4    # "id":J
    :goto_0
    invoke-virtual {p1, v2, v4, v5}, Lcom/samsung/android/ui/preference/SeslPreference;->onAttachedToHierarchy(Lcom/samsung/android/ui/preference/PreferenceManager;J)V

    .line 118
    invoke-virtual {p1, p0}, Lcom/samsung/android/ui/preference/SeslPreference;->assignParent(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V

    .line 120
    iget-boolean v6, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v6, :cond_6

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onAttached()V

    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->notifyHierarchyChanged()V

    .line 126
    return v1

    .line 106
    .end local v2    # "preferenceManager":Lcom/samsung/android/ui/preference/PreferenceManager;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "id":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 243
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 246
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 247
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 233
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 236
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 5
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-object p0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 168
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 169
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    .line 170
    .local v2, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "curKey":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    return-object v2

    .line 176
    :cond_1
    instance-of v4, v2, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    if-eqz v4, :cond_2

    .line 177
    move-object v4, v2

    check-cast v4, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v4

    .line 178
    .local v4, "returnedPreference":Lcom/samsung/android/ui/preference/SeslPreference;
    if-eqz v4, :cond_2

    .line 179
    return-object v4

    .line 168
    .end local v2    # "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    .end local v3    # "curKey":Ljava/lang/String;
    .end local v4    # "returnedPreference":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 1
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslPreference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .line 217
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 220
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onParentChanged(Lcom/samsung/android/ui/preference/SeslPreference;Z)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onAttached()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 198
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/SeslPreference;->onAttached()V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .line 205
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onDetached()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 210
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/SeslPreference;->onDetached()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->onParentChanged(Lcom/samsung/android/ui/preference/SeslPreference;Z)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public removePreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->removePreferenceInt(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    .line 131
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->notifyHierarchyChanged()V

    .line 132
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    .line 66
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
