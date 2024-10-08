.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_SET_A11Y_ITEM_DELEGATE:I = 0x4000

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

.field mShadowedHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11079
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 11080
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 11082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11062
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11063
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    .line 11064
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I

    .line 11066
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11068
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11069
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11070
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11071
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11072
    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 11073
    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11074
    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11075
    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11076
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11083
    if-eqz p1, :cond_0

    .line 11086
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11088
    return-void

    .line 11084
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$4500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 11042
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->onEnteredHiddenState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 11042
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->onLeftHiddenState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11042
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11042
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 11042
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11042
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p1, "x1"    # Z

    .line 11042
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11042
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 11091
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11093
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11096
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .line 11100
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11101
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11103
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11106
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method private onEnteredHiddenState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 11110
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11111
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 11113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11116
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setChildImportantForAccessibilityInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Z

    .line 11117
    return-void
.end method

.method private onLeftHiddenState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 11120
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setChildImportantForAccessibilityInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Z

    .line 11121
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11122
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .line 11126
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 11127
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11129
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11132
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/Object;

    .line 11136
    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11137
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 11138
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11139
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11140
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11143
    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 11146
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11147
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .line 11150
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11151
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11152
    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 11155
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11156
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11159
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11160
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 11163
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11164
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 11167
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11168
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 11171
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 11172
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11173
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11174
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 11178
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 11179
    const/4 v0, -0x1

    .local v0, "var1":I
    goto :goto_0

    .line 11181
    .end local v0    # "var1":I
    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapterPositionFor(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    .line 11184
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 11188
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 11192
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 11197
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11198
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .local v0, "var1":I
    goto :goto_0

    .line 11200
    .end local v0    # "var1":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11203
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 11207
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11213
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11214
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .local v0, "var1":I
    goto :goto_0

    .line 11216
    .end local v0    # "var1":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11219
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11224
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    .line 11225
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11226
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .local v0, "var1":Ljava/util/List;
    goto :goto_0

    .line 11228
    .end local v0    # "var1":Ljava/util/List;
    :cond_0
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .restart local v0    # "var1":Ljava/util/List;
    goto :goto_0

    .line 11231
    .end local v0    # "var1":Ljava/util/List;
    :cond_1
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 11234
    .restart local v0    # "var1":Ljava/util/List;
    :goto_0
    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 11239
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 11240
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 11242
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 11245
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 11250
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11251
    const/4 v0, 0x0

    .local v0, "var1":Z
    goto :goto_0

    .line 11253
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x1

    .line 11256
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method isBound()Z
    .locals 1

    .line 11261
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11262
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11264
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11267
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 1

    .line 11272
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 11273
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11275
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11278
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11283
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11284
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11286
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11289
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 11294
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 11295
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11297
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11300
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method isScrap()Z
    .locals 1

    .line 11305
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    if-eqz v0, :cond_0

    .line 11306
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11308
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11311
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method isTmpDetached()Z
    .locals 1

    .line 11316
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 11317
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11319
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11322
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method isUpdated()Z
    .locals 1

    .line 11327
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 11328
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11330
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11333
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method needsUpdate()Z
    .locals 1

    .line 11338
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 11339
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11341
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11344
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 11348
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11349
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11352
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 11353
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11356
    :cond_1
    if-eqz p2, :cond_2

    .line 11357
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11360
    :cond_2
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11361
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11362
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11365
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    .line 11368
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11369
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 11370
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11371
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    .line 11372
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11373
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11374
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11375
    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 11376
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearPayload()V

    .line 11377
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11378
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11379
    invoke-static {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 11380
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 11383
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11384
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    .line 11387
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 11390
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11391
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 11395
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 11396
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    sub-int/2addr v1, v0

    .local v1, "var2":I
    goto :goto_0

    .line 11398
    .end local v1    # "var2":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/2addr v1, v0

    .line 11401
    .restart local v1    # "var2":I
    :goto_0
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11402
    if-gez v1, :cond_1

    .line 11403
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "View"

    invoke-static {v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11405
    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11406
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 11407
    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 11408
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11411
    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Z

    .line 11414
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 11415
    iput-boolean p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11416
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .line 11420
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 11421
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11423
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11426
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method stopIgnoring()V
    .locals 1

    .line 11430
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    .line 11431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 11434
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11435
    .local v0, "var1":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11436
    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11438
    .local v1, "var2":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v2, :cond_0

    .line 11439
    const-string v2, "[changeScrap]"

    .local v2, "var3":Ljava/lang/String;
    goto :goto_0

    .line 11441
    .end local v2    # "var3":Ljava/lang/String;
    :cond_0
    const-string v2, "[attachedScrap]"

    .line 11444
    .restart local v2    # "var3":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11447
    .end local v1    # "var2":Ljava/lang/StringBuilder;
    .end local v2    # "var3":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11448
    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11451
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11452
    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11455
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11456
    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11459
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11460
    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11463
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11464
    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11467
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11468
    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11471
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 11472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11475
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 11476
    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11479
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    .line 11480
    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11483
    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method unScrap()V
    .locals 1

    .line 11488
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mScrapContainer:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 11489
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .line 11493
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 11494
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 11496
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 11499
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method
