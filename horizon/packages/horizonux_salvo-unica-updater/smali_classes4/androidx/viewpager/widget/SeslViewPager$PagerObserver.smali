.class Landroidx/viewpager/widget/SeslViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/SeslViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/SeslViewPager;)V
    .locals 0

    .line 3061
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3062
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3065
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/SeslViewPager;->dataSetChanged()V

    .line 3066
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3069
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/SeslViewPager;->dataSetChanged()V

    .line 3070
    return-void
.end method
