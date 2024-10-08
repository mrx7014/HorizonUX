.class public Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;
.implements Lcom/samsung/android/ui/preference/SeslPreferenceGroup$PreferencePositionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<",
        "Lcom/samsung/android/ui/preference/PreferenceViewHolder;",
        ">;",
        "Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;",
        "Lcom/samsung/android/ui/preference/SeslPreferenceGroup$PreferencePositionCallback;"
    }
.end annotation


# instance fields
.field private mCategoryLayoutId:I

.field private mHandler:Landroid/os/Handler;

.field mIsCategoryAfter:Z

.field mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

.field mNextPreference:Lcom/samsung/android/ui/preference/SeslPreference;

.field private mPreferenceGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPrevPreference:Lcom/samsung/android/ui/preference/SeslPreference;

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;-><init>()V

    .line 32
    const v0, 0x7f0c0098

    iput v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mCategoryLayoutId:I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPrevPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 42
    new-instance v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 43
    new-instance v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$1;-><init>(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 52
    invoke-virtual {p1, p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    instance-of v1, v0, Lcom/samsung/android/ui/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lcom/samsung/android/ui/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 64
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 175
    .local v0, "pl":Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;
    .param p2, "in"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 166
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    .line 167
    .local v0, "pl":Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->access$102(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 170
    return-object v0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/preference/SeslPreference;",
            ">;",
            "Lcom/samsung/android/ui/preference/SeslPreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 121
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/preference/SeslPreference;>;"
    invoke-virtual {p2}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->sortPreferences()V

    .line 123
    invoke-virtual {p2}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 124
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 126
    invoke-virtual {p2, v1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    .line 127
    .local v2, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 128
    iput-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 129
    iget-boolean v3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    if-ne v2, v3, :cond_1

    .line 130
    iput-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 134
    iget-object v3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    if-ne v2, v3, :cond_1

    .line 135
    iput-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 139
    :cond_1
    :goto_1
    instance-of v3, v2, Lcom/samsung/android/ui/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    .line 140
    iget-boolean v3, v2, Lcom/samsung/android/ui/preference/SeslPreference;->mIsRoundChanged:Z

    if-nez v3, :cond_2

    .line 141
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/preference/SeslPreference;->seslSetSubheaderRoundedBg(I)V

    .line 143
    :cond_2
    iget-boolean v3, p2, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mIsSolidRoundedCorner:Z

    iput-boolean v3, v2, Lcom/samsung/android/ui/preference/SeslPreference;->mIsSolidRoundedCorner:Z

    .line 144
    iget v3, p2, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->mSubheaderColor:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/preference/SeslPreference;->seslSetSubheaderColor(I)V

    .line 146
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    instance-of v3, v2, Lcom/samsung/android/ui/preference/PreferenceCategory;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/SeslPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mCategoryLayoutId:I

    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/SeslPreference;->getLayoutResource()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 149
    const v3, 0x7f0c0099

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/preference/SeslPreference;->setLayoutResource(I)V

    .line 151
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->addPreferenceClassName(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 153
    instance-of v3, v2, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    if-eqz v3, :cond_5

    .line 154
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 155
    .local v3, "preferenceAsGroup":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    iget-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    iput-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mNextGroupPreference:Lcom/samsung/android/ui/preference/SeslPreference;

    .line 157
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V

    .line 161
    .end local v3    # "preferenceAsGroup":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    :cond_5
    invoke-virtual {v2, p0}, Lcom/samsung/android/ui/preference/SeslPreference;->setOnPreferenceChangeInternalListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;)V

    .line 124
    .end local v2    # "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method private syncMyPreferences()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/preference/SeslPreference;

    .line 69
    .local v1, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/preference/SeslPreference;->setOnPreferenceChangeInternalListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeInternalListener;)V

    .line 70
    .end local v1    # "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "fullPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/preference/SeslPreference;>;"
    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v1, "visiblePreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/preference/SeslPreference;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/preference/SeslPreference;

    .line 76
    .local v3, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/SeslPreference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_1
    goto :goto_1

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 82
    .local v2, "oldVisibleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/preference/SeslPreference;>;"
    iput-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 83
    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 85
    iget-object v3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceManager()Lcom/samsung/android/ui/preference/PreferenceManager;

    move-result-object v3

    .line 86
    .local v3, "preferenceManager":Lcom/samsung/android/ui/preference/PreferenceManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/PreferenceManager;->getPreferenceComparisonCallback()Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {v3}, Lcom/samsung/android/ui/preference/PreferenceManager;->getPreferenceComparisonCallback()Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    .line 88
    .local v4, "comparisonCallback":Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;
    new-instance v5, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;

    invoke-direct {v5, p0, v2, v1, v4}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;-><init>(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;)V

    invoke-static {v5}, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil;->calculateDiff(Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Callback;)Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v5

    .line 110
    .local v5, "result":Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$DiffResult;
    invoke-virtual {v5, p0}, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 111
    .end local v4    # "comparisonCallback":Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;
    .end local v5    # "result":Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$DiffResult;
    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 115
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/preference/SeslPreference;

    .line 116
    .local v5, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-virtual {v5}, Lcom/samsung/android/ui/preference/SeslPreference;->clearWasDetached()V

    .line 117
    .end local v5    # "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    goto :goto_3

    .line 118
    :cond_4
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 1
    .param p1, "position"    # I

    .line 186
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslPreference;

    return-object v0

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const-wide/16 v0, -0x1

    return-wide v0

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslPreference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    .line 216
    .local v0, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 218
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 219
    .local v1, "viewType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 220
    return v1

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v3, v4}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return v1
.end method

.method public getPreferenceAdapterPosition(Lcom/samsung/android/ui/preference/SeslPreference;)I
    .locals 4
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 266
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 267
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreference;

    .line 269
    .local v2, "candidate":Lcom/samsung/android/ui/preference/SeslPreference;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    return v1

    .line 267
    .end local v2    # "candidate":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 255
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 256
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreference;

    .line 257
    .local v2, "candidate":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-virtual {v2}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    return v1

    .line 255
    .end local v2    # "candidate":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .line 248
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    .line 249
    .local v0, "preference":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 250
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 230
    .local v0, "pl":Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 232
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->access$200(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 235
    .local v3, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 236
    invoke-static {v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-static {v0}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 239
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    :cond_1
    :goto_0
    new-instance v4, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    invoke-direct {v4, v2}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v4
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 201
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method
