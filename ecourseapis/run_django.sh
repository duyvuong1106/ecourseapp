pip install -r requirements.txt

#mython manage.py migrate
#
#export DJANGO_SUPERUSER_USERNAME=admin
#export DJANGO_SUPERUSER_EMAIL=admin@gmail.com
#export DJANGO_SUPERUSER_PASSWORD=123
#
#python manage.py createsuperuser --no-input

python manage shell << EOF
from courses.models import Category, Course

c1, _ = Category.objects.get_or_create(name='Software Engineering')
c2, _ = Category.objects.get_or_create(name='Artificial Intelligence')
c3, _ = Category.objects.get_or_create(name='Data Sciences')

Course.objects.create(subject='Introduction to SE', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c1)
Course.objects.create(subject='Software Testing', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c1)
Course.objects.create(subject='Introduction to AI', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c2)
Course.objects.create(subject='Machine Learning', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c1)
Course.objects.create(subject='Deep Learning', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c1)
Course.objects.create(subject='Computer Vision', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c1)
Course.objects.create(subject='Natural Language Processing', description='demo', image='image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c1)
Course.objects.create(subject='Python Programming', description='demo', image='dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c3)
Course.objects.create(subject='Data Analysis', description='demo', image='dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c3)
Course.objects.create(subject='Data Mining', description='demo', image='dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c3)
Course.objects.create(subject='Using Power BI', description='demo', image='dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', category=c3)

#t1, _ = Tag.objects.get_or_create(name='techniques')
#t2, _ = Tag.objects.get_or_create(name='software')
#t3, _ = Tag.objects.get_or_create(name='programming')
#
#l1 = Lesson.objects.create(subject='SE Overview', content='Demo', image='https://res.cloudinary.com/dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', course=co1)
#l1.tags.add(t1)
#l1.tags.add(t2)
#l1.save()
#l2 = Lesson.objects.create(subject='Software Analysis', content='Demo', image='https://res.cloudinary.com/dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', course=co1)
#l2.tags.add(t2)
#l2.tags.add(t3)
#l2.save()
#l3 = Lesson.objects.create(subject='Software Design', content='Demo', image='https://res.cloudinary.com/dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', course=co1)
#l3.tags.add(t1)
#l3.tags.add(t2)
#l3.tags.add(t3)
#l3.save()
#l4 = Lesson.objects.create(subject='Black-box Testing', content='Demo', image='https://res.cloudinary.com/dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', course=co2)
#l5 = Lesson.objects.create(subject='White-box Testing', content='Demo', image='https://res.cloudinary.com/dxxwcby8l/image/upload/v1709565062/rohn1l6xtpxedyqgyncs.png', course=co2)

EOF

python manage.py runserver

