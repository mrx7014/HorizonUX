.class public abstract Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;
.super Ljava/lang/Object;
.source "OnSingleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 28
    .local v0, "uptimeMillis":J
    iget-wide v2, p0, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;->onSingleClick(Landroid/view/View;)V

    .line 31
    :cond_0
    iput-wide v0, p0, Lcom/mesalabs/cerberus/ui/callback/OnSingleClickListener;->mLastClickTime:J

    .line 32
    return-void
.end method

.method public abstract onSingleClick(Landroid/view/View;)V
.end method
